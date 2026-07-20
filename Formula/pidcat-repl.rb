class PidcatRepl < Formula
  desc "Colored logcat filtered by application package, with an interactive filter UI"
  homepage "https://github.com/imcarlost/pidcat-repl"
  url "https://github.com/imcarlost/pidcat-repl/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "1ff634bad5efc445a406491a8f73863bcfd9590524079dd11cbe5a3d0d354d97"
  license "Apache-2.0"

  depends_on "python3"

  def install
    bin.install "pidcat.py" => "pidcat"
    bash_completion.install "bash_completion.d/pidcat"
    zsh_completion.install "zsh-completion/_pidcat"
  end

  test do
    assert_match "pidcat", shell_output("#{bin}/pidcat --version")
  end
end
