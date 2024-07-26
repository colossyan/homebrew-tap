require "formula"
require_relative "lib/private_strategy"

class Cde < Formula
  homepage "https://github.com/colossyan/cde"
  head "https://github.com/colossyan/cde.git"
  version "v0.9-beta.6"
  url "https://github.com/colossyan/cde/releases/download/#{version}/cde-macos.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "a50714e027d305b646290359fdfceba7d3029452a13e4acb75d0f24d32db2c20"

  on_linux do
    url "https://github.com/colossyan/cde/releases/download/#{version}/cde-linux.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "6935082cc57a143069a7f6b7c4b53e41fad4e0ff33527875f6f42325b011873a"
  end

  def install
    if OS.mac?
      bin.install "cde-macos" => "cde"
    elsif OS.linux?
      bin.install "cde-linux" => "cde"
    end
  end
end