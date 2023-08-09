require "formula"
require_relative "lib/private_strategy"

class Cde < Formula
  homepage "https://github.com/colossyan/cde"
  head "https://github.com/colossyan/cde.git"
  version "v0.8-beta.17"
  url "https://github.com/colossyan/cde/releases/download/v0.8-beta.17/cde-macos.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "fce919e792c05f47ff94d5070b0326cece489dffb1cecb0e9f31c8053ee8f7f6"

  on_linux do
    url "https://github.com/colossyan/cde/releases/download/v0.8-beta.17/cde-linux.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "e89fb636749651d9dc1779ba8e9c83a9d169e2275ba65a27ee0f44128220dc0e"
  end

  def install
    if OS.mac?
      bin.install "cde-macos" => "cde"
    elsif OS.linux?
      bin.install "cde-linux" => "cde"
    end
  end
end