class Mdbub < Formula
  desc "Terminal-first interactive mindmap CLI tool"
  homepage "https://github.com/collabinator/mdbubbles"
  url "https://github.com/collabinator/mdbubbles/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "4717b8bf073703c5f2f3a3bdb4fbfce40336ee571bfa704faef4f7ea38274993"
  license "Apache-2.0"

  depends_on "python@3.11"

  def install
    system "pip3", "install", ".", "--prefix=#{prefix}"
  end

  test do
    system "#{bin}/mdbub", "--version"
  end
end
