class Mdbub < Formula
  desc "Terminal-first interactive mindmap CLI tool"
  homepage "https://github.com/collabinator/mdbubbles"
  url "https://github.com/collabinator/mdbubbles/archive/refs/tags/v0.3.10.tar.gz"
  sha256 "2df401574dc22c22f1ff9f9deb1e7b6e4f3ed59e40d5bcbc89b5d3ee68e0d763"
  license "Apache-2.0"

  depends_on "python@3.11"

  def install
    system "pip3", "install", ".", "--prefix=#{prefix}"
  end

  test do
    system "#{bin}/mdbub", "--version"
  end
end
