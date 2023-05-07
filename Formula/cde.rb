require "formula"
require_relative "lib/private_strategy"

class Cde < Formula
  homepage "https://github.com/colossyan/cde"
  url "https://github.com/colossyan/cde/releases/download/v0.6-alpha.1/cde-macos.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "dd79ae6726ae4cded73711d426fdb9d7bce9b5ce8d413cf607d5f62002268ee5"
  head "https://github.com/colossyan/cde.git"
  version "0.6-alpha.1"

  def install
    bin.install "cde"
  end
end