class Mdbub < Formula
  desc "Terminal-first interactive mindmap CLI tool"
  homepage "https://github.com/collabinator/mdbubbles"
  url "https://github.com/collabinator/mdbubbles/archive/refs/tags/v0.3.12.tar.gz"
  sha256 "44d4c4d06b50d8da662abe21bd5f940053a9501920a79facb251e087dbc274cd"
  license "Apache-2.0"

  depends_on "python@3.11"

  def install
    system "pip3", "install", ".", "--prefix=#{prefix}"
  end

  test do
    system "#{bin}/mdbub", "--version"
  end
end
