class Gamectl < Formula
  desc "Sovereign TUI Game Manager & Launcher for Linux (Zero-Bloat)"
  homepage "https://github.com/zyekhabdul/gamectl"
  url "https://github.com/zyekhabdul/gamectl/archive/refs/tags/v1.2.0.tar.gz"
  license "MIT"
  head "https://github.com/zyekhabdul/gamectl.git", branch: "main"

  depends_on "bash"
  depends_on "curl"
  depends_on "fzf"
  depends_on "jq"
  depends_on "python@3.12"
  depends_on "rsync"

  def install
    bin.install "bin/gamectl"
    bin.install_symlink "gamectl" => "game"
    bash_completion.install "completions/gamectl.bash" => "gamectl"
    bash_completion.install_symlink "gamectl" => "game"
  end

  test do
    system bin/"gamectl", "--version"
    system bin/"game", "--version"
  end
end
