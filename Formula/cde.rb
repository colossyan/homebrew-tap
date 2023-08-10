require "formula"
require_relative "lib/private_strategy"

class Cde < Formula
  homepage "https://github.com/colossyan/cde"
  head "https://github.com/colossyan/cde.git"
  version "0.8-beta.21"
  url "https://github.com/colossyan/cde/releases/download/v0.8-beta.21/cde-macos.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "79b3b3f2f3f6563f33a324719dc1e9423b5a5b7f5229e8161f804277703c3d76"

  on_linux do
    url "https://github.com/colossyan/cde/releases/download/v0.8-beta.21/cde-linux.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "46a041f682baf8a5e06aebb90f82fb6e7a7e4ba9ba6bf867876fa8c2bba07ec6"
  end

  def install
    if OS.mac?
      bin.install "cde-macos" => "cde"
    elsif OS.linux?
      bin.install "cde-linux" => "cde"
    end
  end
end