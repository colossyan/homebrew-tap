require "formula"
require_relative "lib/private_strategy"

class Cde < Formula
  homepage "https://github.com/colossyan/cde"
  head "https://github.com/colossyan/cde.git"
  version "0.8-beta.22.0"
  url "https://github.com/colossyan/cde/releases/download/v0.8-beta.22/cde-macos.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "7213f4e5cc40de5f3174dba0afb93ced7f8a25820265c16b97923a4486bab32b"

  on_linux do
    url "https://github.com/colossyan/cde/releases/download/v0.8-beta.22/cde-linux.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "9ef2e984d9afe18bcb1e45065818ad59ad9cefd5384e8e1bad9825adedb609c9"
  end

  def install
    if OS.mac?
      bin.install "cde-macos" => "cde"
    elsif OS.linux?
      bin.install "cde-linux" => "cde"
    end
  end
end