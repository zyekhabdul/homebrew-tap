class Vol3Suite < Formula
  desc "Unified Memory Forensics, eBPF Rootkit Detection, and AI-Driven Incident Triage Suite"
  homepage "https://github.com/zyekhabdul/volatility3-cyber-suite"
  url "https://github.com/zyekhabdul/volatility3-cyber-suite/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "bc39ea0116c6f9e5ceb06131a27f13d4cfc664cee30f6c191e0a35c91989b8e2"
  license "MIT"
  head "https://github.com/zyekhabdul/volatility3-cyber-suite.git", branch: "main"

  depends_on "python@3.12"

  def install
    libexec.install Dir["*"]
    (bin/"vol3-suite").write <<~EOS
      #!/bin/bash
      export PYTHONPATH="#{libexec}:$PYTHONPATH"
      exec python3 -m vol3_suite.cli "$@"
    EOS
    bin.install_symlink "vol3-suite" => "vol-ai-triage"
    bin.install_symlink "vol3-suite" => "ebpf-detector"
  end

  test do
    system bin/"vol3-suite", "--help"
    system bin/"vol-ai-triage", "--help"
  end
end
