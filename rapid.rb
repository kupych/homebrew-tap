class Rapid < Formula
  desc "Rapid API Dialogue - A REPL for APIs"
  homepage "https://github.com/kupych/rapid"
  url "https://github.com/kupych/rapid/archive/v0.1.0.tar.gz"
  sha256 "d0d86215ce52e4ac3adddc298ade1b422ba4a65c7b49302c3e351914a5a4f4e3"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"rapid"
  end

  test do
    assert_match "RAPID", shell_output("${bin}/rapid 2>&1", 1)
  end
end
