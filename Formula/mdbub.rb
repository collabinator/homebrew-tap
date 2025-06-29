class Mdbub < Formula
  desc "Terminal-first interactive mindmap CLI tool"
  homepage "https://github.com/collabinator/mdbubbles"
  url "https://github.com/collabinator/mdbubbles/archive/refs/tags/v0.3.22.tar.gz"
  sha256 "e2e1ed98e3c17936c7b7c18c346a9bd2f3f33cb48d0286c22d4e7f9a3f6a5b47"
  license "Apache-2.0"

  depends_on "python@3.11"

  def install
    system "pip3", "install", ".", "--prefix=#{prefix}"
  end

  test do
    system "#{bin}/mdbub", "--version"
  end
end
