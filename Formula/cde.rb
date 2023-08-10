require "formula"
require_relative "lib/private_strategy"

class Cde < Formula
  homepage "https://github.com/colossyan/cde"
  head "https://github.com/colossyan/cde.git"
  version "0.8-beta.24"
  url "https://github.com/colossyan/cde/releases/download/v0.8-beta.24/cde-macos.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "2dbefcc1935e3415e406c4f53861d132e9df2bdb628aabeea4bfcdb77ed1446b"

  on_linux do
    url "https://github.com/colossyan/cde/releases/download/v0.8-beta.24/cde-linux.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "35078565de2c71a11ed7df2b8c5e8cf13c899903f2fb0fa4612d5ed0adeb8de7"
  end

  def install
    if OS.mac?
      bin.install "cde-macos" => "cde"
    elsif OS.linux?
      bin.install "cde-linux" => "cde"
    end
  end
end