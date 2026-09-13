class Markora < Formula
  desc "Sovereign Markor-style Markdown Notebook, QuickNotes & Todo TUI"
  homepage "https://github.com/zyekhabdul/markora"
  url "https://github.com/zyekhabdul/markora/archive/refs/tags/v1.0.0.tar.gz"
  license "MIT"
  head "https://github.com/zyekhabdul/markora.git", branch: "main"

  depends_on "python@3.12"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/markora" => "markora"
    bin.install_symlink libexec/"bin/markora" => "td"
    bin.install_symlink libexec/"bin/markora" => "mo"
  end

  test do
    system bin/"markora", "--help"
    system bin/"td", "--help"
  end
end
