class Rapid < Formula
  desc "Rapid API Dialogue - A REPL for APIs"
  homepage "https://github.com/kupych/rapid"
  url "https://github.com/kupych/rapid/archive/v0.2.0.tar.gz"
  sha256 "db0e1ffc5ef06423d2a4b32bb6816fe2de72c70ff182862ee0cc093eb915191a"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"rapid"
  end

  test do
    assert_match "RAPID", shell_output("${bin}/rapid 2>&1", 1)
  end
end
