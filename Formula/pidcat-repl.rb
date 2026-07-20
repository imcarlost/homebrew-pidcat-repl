class PidcatRepl < Formula
  desc "Colored logcat filtered by application package, with an interactive filter UI"
  homepage "https://github.com/imcarlost/pidcat-repl"
  url "https://github.com/imcarlost/pidcat-repl/archive/refs/tags/v2.4.0.tar.gz"
  sha256 "2e6aed994ffb2517cc37fa4bf66bce0a5dbb368d2c34dd389e4479b2234c175c"
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
