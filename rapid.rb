class Rapid < Formula
  desc "Rapid API Dialogue - A REPL for APIs"
  homepage "https://github.com/kupych/rapid"
  url "https://github.com/kupych/rapid/archive/v0.2.3.tar.gz"
  sha256 "b400c2f27df3b20875a1be59dbdd4fc26012882a361512620c0ac4508c1a78cf"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"rapid"
  end

  test do
    assert_match "RAPID", shell_output("${bin}/rapid 2>&1", 1)
  end
end
