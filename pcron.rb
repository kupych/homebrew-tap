class Pcron < Formula
  desc "👀 Peeping Cron - watch a database and notify when conditions are met"
  homepage "https://github.com/kupych/pcron"
  url "https://github.com/kupych/pcron/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f3019d6ca4cc892dea24bb453548897b0ba55e57976bcc8b3756de00cf685b5a"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", bin/"pcron", "."
  end

  test do
    assert_match "pcron", shell_output("#{bin}/pcron help")
  end
end
