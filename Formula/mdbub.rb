class Mdbub < Formula
  desc "Terminal-first interactive mindmap CLI tool"
  homepage "https://github.com/collabinator/mdbubbles"
  url "https://files.pythonhosted.org/packages/source/m/mdbub/mdbub-0.3.0.tar.gz"
  sha256 "WILL BE SET BY GITHUB ACTIONS"
  license "Apache-2.0"

  depends_on "python@3.11"

  def install
    system "pip3", "install", ".", "--prefix=#{prefix}"
  end

  test do
    system "#{bin}/mdbub", "--version"
  end
end
