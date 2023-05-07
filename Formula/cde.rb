require "formula"
require_relative "lib/private_strategy"

class Cde < Formula
  homepage "https://github.com/colossyan/cde"
  url "https://github.com/colossyan/cde/releases/download/v0.6-alpha.4/cde-macos.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "c9a31685ee427eda3f8ccc2ce08b4116a3b139017b0e6aff1ec27927fe7f3bb6"
  head "https://github.com/colossyan/cde.git"
  version "0.6-alpha.4"

  def install
    bin.install "cde"
  end
end