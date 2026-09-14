class AgyGuard < Formula
  desc "Deterministic AI Agent Governance, AST Blast-Radius Scanner & Verification Harness"
  homepage "https://github.com/zyekhabdul/agy-guard"
  url "https://github.com/zyekhabdul/agy-guard/archive/refs/tags/v3.0.1.tar.gz"
  sha256 "35d2c7eba733d9ce2ddd92a61335421410abdc8bcf5316e8f304d219519f9225"
  license "MIT"
  head "https://github.com/zyekhabdul/agy-guard.git", branch: "main"

  depends_on "python@3.12"

  def install
    libexec.install Dir["*"]
    (bin/"agy-guard").write <<~EOS
      #!/bin/bash
      export PYTHONPATH="#{libexec}/src:$PYTHONPATH"
      exec python3 -m agy_guard.cli "$@"
    EOS
  end

  test do
    system bin/"agy-guard", "--help"
  end
end
