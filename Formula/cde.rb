require "formula"
require_relative "lib/private_strategy"

class Cde < Formula
  homepage "https://github.com/colossyan/cde"
  head "https://github.com/colossyan/cde.git"
  version "v0.9-beta.3"
  url "https://github.com/colossyan/cde/releases/download/#{version}/cde-macos.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "370581b3ce75e2cc1be968695b4bed3014db76bce570bf9fddb76d3be1b0869d"

  on_linux do
    url "https://github.com/colossyan/cde/releases/download/#{version}/cde-linux.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "eb083afe218466681caa502243fed1d58af94403135e22b4ef7fa17549377e8d"
  end

  def install
    if OS.mac?
      bin.install "cde-macos" => "cde"
    elsif OS.linux?
      bin.install "cde-linux" => "cde"
    end
  end
end