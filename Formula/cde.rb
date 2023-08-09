require "formula"
require_relative "lib/private_strategy"

class Cde < Formula
  homepage "https://github.com/colossyan/cde"
  head "https://github.com/colossyan/cde.git"
  version "0.8-beta.19"
  url "https://github.com/colossyan/cde/releases/download/0.8-beta.19/cde-macos.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "b35c2b24d58dc88781b694b43f694e6d9036b4f19969eea8a77f6920b98cf033"

  on_linux do
    url "https://github.com/colossyan/cde/releases/download/0.8-beta.19/cde-linux.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "d76d0607188514c9a88d4f0caaff7df7b812820de9a4dd41fe1f0089f8e88c7e"
  end

  def install
    if OS.mac?
      bin.install "cde-macos" => "cde"
    elsif OS.linux?
      bin.install "cde-linux" => "cde"
    end
  end
end