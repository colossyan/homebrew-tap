require "formula"
require_relative "lib/private_strategy"

class Cde < Formula
  homepage "https://github.com/colossyan/cde"
  head "https://github.com/colossyan/cde.git"
  version "v0.8-beta.1"
  url "https://github.com/colossyan/cde/releases/download/v0.8-beta.1/cde-macos.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "02071607582716f5fd61f412e5d167f5f279516a65bc54ffc07f5830ca7b53c4"

  on_linux do
    url url "https://github.com/colossyan/cde/releases/download/v0.8-beta.1/cde-linux.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "ce77ede3215eff45ee94966ced085b372e01d65da2b5a31b362b8fdfd3cb92ac"
  end

  def install
    if OS.mac?
      bin.install "cde-macos" => "cde"
    elsif OS.linux?
      bin.install "cde-linux" => "cde"
    end
  end
end