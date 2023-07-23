require "formula"
require_relative "lib/private_strategy"

class Cde < Formula
  homepage "https://github.com/colossyan/cde"
  head "https://github.com/colossyan/cde.git"
  version "v0.8-beta.2"
  url "https://github.com/colossyan/cde/releases/download/v0.8-beta.2/cde-macos.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "21312ebc65bbcf0b622925995730abf078cb8330596afebb95288bf38e8e6c27"

  on_linux do
    url url "https://github.com/colossyan/cde/releases/download/v0.8-beta.2/cde-linux.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "cb52ca081fc95aa039ba93db81739b6573688762edc800e105039b2494fd1a4a"
  end

  def install
    if OS.mac?
      bin.install "cde-macos" => "cde"
    elsif OS.linux?
      bin.install "cde-linux" => "cde"
    end
  end
end