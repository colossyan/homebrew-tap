require "formula"
require_relative "lib/private_strategy"

class Cde < Formula
  homepage "https://github.com/colossyan/cde"
  head "https://github.com/colossyan/cde.git"
  version "0.8-beta.23"
  url "https://github.com/colossyan/cde/releases/download/v0.8-beta.23/cde-macos.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "a8ca51ad69defb67cf24da74e4feeade87c66f9b3d11ec99ad865eccbfeacfd1"

  on_linux do
    url "https://github.com/colossyan/cde/releases/download/v0.8-beta.23/cde-linux.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "6a3ebcd0c1f8ee61f2f1337fe92cb707adcf434e97774b408a86b790b311f5a6"
  end

  def install
    if OS.mac?
      bin.install "cde-macos" => "cde"
    elsif OS.linux?
      bin.install "cde-linux" => "cde"
    end
  end
end