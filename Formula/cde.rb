require "formula"
require_relative "lib/private_strategy"

class Cde < Formula
  homepage "https://github.com/colossyan/cde"
  head "https://github.com/colossyan/cde.git"
  version "v0.8-beta.14"
  url "https://github.com/colossyan/cde/releases/download/v0.8-beta.14/cde-macos.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "be2a628f687a9c42b2a0ad3c7efb6da5ba790f1e7d1e82a416f60616ee865a89"

  on_linux do
    url "https://github.com/colossyan/cde/releases/download/v0.8-beta.14/cde-linux.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "3c007df42cc96719dd4b081a3ac8ac961775caf90eb437ab1a19605e44b15658"
  end

  def install
    if OS.mac?
      bin.install "cde-macos" => "cde"
    elsif OS.linux?
      bin.install "cde-linux" => "cde"
    end
  end
end