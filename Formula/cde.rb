require "formula"
require_relative "lib/private_strategy"

class Cde < Formula
  homepage "https://github.com/colossyan/cde"
  head "https://github.com/colossyan/cde.git"
  version "0.8-beta.26"
  url "https://github.com/colossyan/cde/releases/download/v0.8-beta.26/cde-macos.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "bf60da791c43a0590008f98a037b55f9d5309c645750510e343800bcc01a4dec"

  on_linux do
    url "https://github.com/colossyan/cde/releases/download/v0.8-beta.26/cde-linux.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "9a4b7f654a2e24bdce2f6672859e55ee4183c64b59f925f03708c531f9dfffd8"
  end

  def install
    if OS.mac?
      bin.install "cde-macos" => "cde"
    elsif OS.linux?
      bin.install "cde-linux" => "cde"
    end
  end
end