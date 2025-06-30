class Mdbub < Formula
  desc "Terminal-first interactive mindmap CLI tool"
  homepage "https://github.com/collabinator/mdbubbles"
  url "https://github.com/collabinator/mdbubbles/archive/refs/tags/v0.3.25.tar.gz"
  sha256 "ce1af09709d7816166d1e566a3b4f9ec4d8d12a36537602e415622ccd73e6ca7"
  license "Apache-2.0"

  depends_on "python@3.11"

  def install
    system "pip3", "install", ".", "--prefix=#{prefix}"
  end

  test do
    system "#{bin}/mdbub", "--version"
  end
end
