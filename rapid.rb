class Rapid < Formula
  desc "Rapid API Dialogue - A REPL for APIs"
  homepage "https://github.com/kupych/rapid"
  url "https://github.com/kupych/rapid/archive/v0.2.6.tar.gz"
  sha256 "fd0f913b74e190d2ba1c69c8c452cf4ff1a3bc8a3f7c56bbbfbe80d7c92d16cd"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"rapid"
  end

  test do
    assert_match "RAPID", shell_output("${bin}/rapid 2>&1", 1)
  end
end
