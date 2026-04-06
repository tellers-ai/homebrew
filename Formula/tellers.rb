class Tellers < Formula
  desc "Tellers CLI - interact with tellers.ai from the terminal"
  homepage "https://tellers.ai"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tellers-ai/tellers-cli/releases/download/v0.1.0/tellers-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/tellers-ai/tellers-cli/releases/download/v0.1.0/tellers-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tellers-ai/tellers-cli/releases/download/v0.1.0/tellers-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/tellers-ai/tellers-cli/releases/download/v0.1.0/tellers-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "tellers"
  end

  test do
    system "#{bin}/tellers", "--help"
  end
end
