class AgyGuard < Formula
  desc "Deterministic AI Agent Governance, AST Blast-Radius Scanner & Verification Harness"
  homepage "https://github.com/zyekhabdul/agy-guard"
  url "https://github.com/zyekhabdul/agy-guard/archive/refs/tags/v3.0.0.tar.gz"
  sha256 "03fb1c03f781bd195d7e9dd84d98c05e5c554e6d105d686de06464ba9d3e9198"
  license "MIT"
  head "https://github.com/zyekhabdul/agy-guard.git", branch: "main"

  depends_on "python@3.12"

  def install
    bin.install "bin/agy-guard"
  end

  test do
    system bin/"agy-guard", "--help"
  end
end
