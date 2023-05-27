require "formula"
require_relative "lib/private_strategy"

class Cde < Formula
  homepage "https://github.com/colossyan/cde"
  head "https://github.com/colossyan/cde.git"
  version "v0.7-alpha.17"
  url "https://github.com/colossyan/cde/releases/download/v0.7-alpha.13/cde-macos.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "fad71e6404f98fa0896163519835d552cf19129362a07506bdb62a8a5dfa0b43"

  on :linux do
    url url "https://github.com/colossyan/cde/releases/download/v0.7-alpha.13/cde-linux.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "69752c23a0277542cd2808ef4984dfe2c9bee35d27b497c0a0661cce8a40007c"
  end

  def install
    if OS.mac? do
      bin.install "cde-macos" => "cde"
    elsif OS.linux? do
      bin.install "cde-linux" => "cde"
    end
  end
end