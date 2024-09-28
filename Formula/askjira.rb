class Askjira < Formula
  desc "Cody Chat CLI for Jira Integration"
  homepage "https://github.com/kiraum/askJira"
  url "https://github.com/kiraum/askJira/raw/main/releases/v0.0.1/askJira-v0.0.1-macos-arm64.tar.gz",
      using: CurlDownloadStrategy
  sha256 "5c3fbb9167352d69f3510c189302a6c23447b803c9aa5558f20f8cfaa3f60c67"
  version "0.0.1"
  license "MIT"

  def install
    bin.install "askJira"
    system "hash", "-r"
  end

  test do
    system "#{bin}/askJira", "--version"
  end
end
