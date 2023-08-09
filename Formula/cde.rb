require "formula"
require_relative "lib/private_strategy"

class Cde < Formula
  homepage "https://github.com/colossyan/cde"
  head "https://github.com/colossyan/cde.git"
  version "v0.8-beta.8"
  url "https://github.com/colossyan/cde/releases/download/v0.8-beta.8/cde-macos.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "3a1980b911805e029d1e79e91e4bc13a0a6e8f8dc4c36bba54a28a92e626db38"

  on_linux do
    url "https://github.com/colossyan/cde/releases/download/v0.8-beta.8/cde-linux.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "521af665c29faa334b0da5d271f813398b65f05f20b89795a2aa31dee98c3fe6"
  end

  def install
    if OS.mac?
      bin.install "cde-macos" => "cde"
    elsif OS.linux?
      bin.install "cde-linux" => "cde"
    end
  end
end