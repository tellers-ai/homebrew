class Tellers < Formula
  desc "Tellers CLI - interact with tellers.ai from the terminal"
  homepage "https://tellers.ai"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tellers-ai/tellers-cli/releases/download/v0.0.2/tellers-v0.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "c20ad07ca37dd1295b392f878ef5532956ec477cc1f6e8daef107f1edd85d6b0"
    else
      url "https://github.com/tellers-ai/tellers-cli/releases/download/v0.0.2/tellers-v0.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "f3afacaa1aaff7baaaae628d334ddfea3af45780674ba32cb21298a52b2bf8a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tellers-ai/tellers-cli/releases/download/v0.0.2/tellers-v0.0.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "53dd6c1333ba7f35f6c41a112f4fc0703e8953af4e0ad874b76572a70e16436b"
    else
      url "https://github.com/tellers-ai/tellers-cli/releases/download/v0.0.2/tellers-v0.0.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aefa34dded3f046253fc2ca11c0811fe26fb238f4c9b113896919d3f9434ca77"
    end
  end

  def install
    bin.install "tellers"
  end

  test do
    system "#{bin}/tellers", "--help"
  end
end
