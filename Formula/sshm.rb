class Sshm < Formula
  desc "Interactive SSH Fuzzy Manager with Live Metadata Preview"
  homepage "https://github.com/zyekhabdul/sshm"
  url "https://github.com/zyekhabdul/sshm/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "5389f8a16944cafbe0fb440c6eb48b9a003e8a06996a526df8050089be789b35"
  license "MIT"
  head "https://github.com/zyekhabdul/sshm.git", branch: "main"

  depends_on "bash"
  depends_on "fzf"

  def install
    bin.install "bin/sshm"
  end

  test do
    system bin/"sshm", "--help"
  end
end
