require "formula"
require_relative "lib/private_strategy"

class Cde < Formula
  homepage "https://github.com/colossyan/cde"
  url "https://github.com/colossyan/cde/releases/download/v0.7-alpha.13/cde-macos.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "fad71e6404f98fa0896163519835d552cf19129362a07506bdb62a8a5dfa0b43"
  head "https://github.com/colossyan/cde.git"
  version "v0.7-alpha.13"

  def install
    bin.install "cde-macos" => "cde"
  end
end