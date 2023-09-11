require "formula"
require_relative "constants"
require_relative "lib/private_strategy"

class Cde < Formula
  homepage "https://github.com/colossyan/cde"
  head "https://github.com/colossyan/cde.git"
  url "https://github.com/colossyan/cde/releases/download/#{VERSION}/cde-macos.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  version VERSION
  sha256 SHA256_MACOS

  on_linux do
    url "https://github.com/colossyan/cde/releases/download/#{VERSION}/cde-linux.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 Constants::SHA256_LINUX
  end

  def install
    if OS.mac?
      bin.install "cde-macos" => "cde"
    elsif OS.linux?
      bin.install "cde-linux" => "cde"
    end
  end
end
