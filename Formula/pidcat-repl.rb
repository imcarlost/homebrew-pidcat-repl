class PidcatRepl < Formula
  desc "Colored logcat filtered by application package, with an interactive filter UI"
  homepage "https://github.com/imcarlost/pidcat-repl"
  url "https://github.com/imcarlost/pidcat-repl/archive/refs/tags/v2.3.0.tar.gz"
  sha256 "a677ce3e0058597a89cd54c45500124ba77a29bd2033a9005ff34cccbeb56fad"
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
