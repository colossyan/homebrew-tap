require "formula"
require_relative "lib/private_strategy"

class Cde < Formula
  homepage "https://github.com/colossyan/cde"
  head "https://github.com/colossyan/cde.git"
  version "v0.9-beta.8"
  url "https://github.com/colossyan/cde/releases/download/#{version}/cde-macos.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "c70a4d55bb2b5d6fa5f080e1b44e4fc18d7ae156873ab6936f222c036529ef4d"

  on_linux do
    url "https://github.com/colossyan/cde/releases/download/#{version}/cde-linux.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "473f6f5a64ddbd93931a1f474214774902be9550fb505ac8d878412662ff7e85"
  end

  def install
    if OS.mac?
      bin.install "cde-macos" => "cde"
    elsif OS.linux?
      bin.install "cde-linux" => "cde"
    end
  end
end