require "formula"
require_relative "lib/private_strategy"

class Cde < Formula
  homepage "https://github.com/colossyan/cde"
  head "https://github.com/colossyan/cde.git"
  version "v0.9-beta.2"
  url "https://github.com/colossyan/cde/releases/download/#{version}/cde-macos.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "95af9b08d5d31ccd3a8f1cc29fd07b698b88b56dc999e5da54a2bf18c26945f4"

  on_linux do
    url "https://github.com/colossyan/cde/releases/download/#{version}/cde-linux.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "32870a893311f7da9b45899e9828ebe9880fe3a026242a84d9a4b45b1a70c7aa"
  end

  def install
    if OS.mac?
      bin.install "cde-macos" => "cde"
    elsif OS.linux?
      bin.install "cde-linux" => "cde"
    end
  end
end