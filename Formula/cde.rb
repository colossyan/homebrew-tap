require "formula"
require_relative "lib/private_strategy"

class Cde < Formula
  homepage "https://github.com/colossyan/cde"
  head "https://github.com/colossyan/cde.git"
  version "v0.8-beta.18"
  url "https://github.com/colossyan/cde/releases/download/v0.8-beta.18/cde-macos.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "8b1c08262be7d7acc97a4e238772cfb66a5290f32d02f465f95ea94d05d22a97"

  on_linux do
    url "https://github.com/colossyan/cde/releases/download/v0.8-beta.18/cde-linux.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "871c5b0f3173805bfa00b980e663d9c24b04c145808583db2bb6fa45fe946762"
  end

  def install
    if OS.mac?
      bin.install "cde-macos" => "cde"
    elsif OS.linux?
      bin.install "cde-linux" => "cde"
    end
  end
end