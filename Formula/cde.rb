require "formula"
require_relative "lib/private_strategy"

class Cde < Formula
  homepage "https://github.com/colossyan/cde"
  head "https://github.com/colossyan/cde.git"
  version "v0.8-beta.13"
  url "https://github.com/colossyan/cde/releases/download/v0.8-beta.13/cde-macos.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "c8ef264d4fa3a1c7732e612f97aab6d2476189786c299fffbc7a314990ac86aa"

  on_linux do
    url "https://github.com/colossyan/cde/releases/download/v0.8-beta.13/cde-linux.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "85e8a2fdc1aca45fe543504580c63a3ac5e8894c756baab7d0178349d902dbc5"
  end

  def install
    if OS.mac?
      bin.install "cde-macos" => "cde"
    elsif OS.linux?
      bin.install "cde-linux" => "cde"
    end
  end
end