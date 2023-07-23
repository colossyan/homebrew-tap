require "formula"
require_relative "lib/private_strategy"

class Cde < Formula
  homepage "https://github.com/colossyan/cde"
  head "https://github.com/colossyan/cde.git"
  version "v0.8-beta.3"
  url "https://github.com/colossyan/cde/releases/download/v0.8-beta.3/cde-macos.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "a89aa6196aed18d58b904af868fc494ea2ac71b233334c042f57d999dfc078f0"

  on_linux do
    url url "https://github.com/colossyan/cde/releases/download/v0.8-beta.3/cde-linux.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "ffc6147337d46e109faa64c0ce2f80ff35ca5bccbffeab81d579fc28b438e6a7"
  end

  def install
    if OS.mac?
      bin.install "cde-macos" => "cde"
    elsif OS.linux?
      bin.install "cde-linux" => "cde"
    end
  end
end