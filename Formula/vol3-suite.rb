class Vol3Suite < Formula
  desc "Unified Memory Forensics, eBPF Rootkit Detection, and AI-Driven Incident Triage Suite"
  homepage "https://github.com/zyekhabdul/volatility3-cyber-suite"
  url "https://github.com/zyekhabdul/volatility3-cyber-suite/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "bc39ea0116c6f9e5ceb06131a27f13d4cfc664cee30f6c191e0a35c91989b8e2"
  license "MIT"
  head "https://github.com/zyekhabdul/volatility3-cyber-suite.git", branch: "main"

  depends_on "python@3.12"

  def install
    bin.install "vol3_suite/cli.py" => "vol3-suite"
    bin.install_symlink "vol3-suite" => "vol-ai-triage"
  end

  test do
    system bin/"vol3-suite", "--help"
  end
end
