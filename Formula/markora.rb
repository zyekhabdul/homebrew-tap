class Markora < Formula
  desc "Sovereign Markor-style Markdown Notebook, QuickNotes & Todo TUI"
  homepage "https://github.com/zyekhabdul/markora"
  url "https://github.com/zyekhabdul/markora/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "3cec97a7fc37ffd3c53eee807525d7e0b3b65d95e7c5f5dfcdd525f2d70e6418"
  license "MIT"
  head "https://github.com/zyekhabdul/markora.git", branch: "main"

  depends_on "python@3.12"

  def install
    libexec.install Dir["*"]
    (bin/"markora").write <<~EOS
      #!/bin/bash
      export PYTHONPATH="#{libexec}/src:$PYTHONPATH"
      exec python3 -m markora.cli "$@"
    EOS
    bin.install_symlink "markora" => "td"
    bin.install_symlink "markora" => "mo"
  end

  test do
    system bin/"markora", "--help"
    system bin/"td", "--help"
  end
end
