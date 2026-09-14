class AgyQuota < Formula
  desc "Antigravity Multi-Account Token, Quota & Tier Bulk Checker"
  homepage "https://github.com/zyekhabdul/agy-quota"
  url "https://github.com/zyekhabdul/agy-quota/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "67629a73dedee450a4b829b82248faf14933930cbf5239e2b9265eaad282409a"
  license "MIT"
  head "https://github.com/zyekhabdul/agy-quota.git", branch: "main"

  depends_on "python@3.12"

  def install
    libexec.install Dir["*"]
    (bin/"agy-quota").write <<~EOS
      #!/bin/bash
      export PYTHONPATH="#{libexec}/src:$PYTHONPATH"
      exec python3 -m agy_quota.cli "$@"
    EOS
    bin.install_symlink "agy-quota" => "agy-tokens"
  end

  test do
    system bin/"agy-quota", "--help"
    system bin/"agy-tokens", "--help"
  end
end
