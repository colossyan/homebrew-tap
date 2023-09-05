require "formula"
require_relative "lib/private_strategy"

class Cde < Formula
  homepage "https://github.com/colossyan/cde"
  head "https://github.com/colossyan/cde.git"
  version "v0.9-beta.0"
  url "https://github.com/colossyan/cde/releases/download/v0.9-beta.0/cde-macos.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "5bbe6e0f54ea7d2d4397d37e156eadb2841533a95dfbe91ab235f21f39df8da7"

  on_linux do
    url "https://github.com/colossyan/cde/releases/download/v0.9-beta.0/cde-linux.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "284c9af50f3bbb1b193ee686fdea9dd7a0980611b91156e6453dd07e6167098a"
  end

  def install
    if OS.mac?
      bin.install "cde-macos" => "cde"
    elsif OS.linux?
      bin.install "cde-linux" => "cde"
    end
  end
end