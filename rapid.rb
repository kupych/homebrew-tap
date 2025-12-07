class Rapid < Formula
  desc "Rapid API Dialogue - A REPL for APIs"
  homepage "https://github.com/kupych/rapid"
  url "https://github.com/kupych/rapid/archive/v0.2.9.tar.gz"
  sha256 "df34faa6ba454e204fffdf682337246a32858565b40f524fafd671b706c3d89e"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"rapid"
  end

  test do
    assert_match "RAPID", shell_output("${bin}/rapid 2>&1", 1)
  end
end
