class Ednx < Formula
  desc "Go library and CLI tool for converting between EDN and JSON formats"
  homepage "https://github.com/judepayne/ednx"
  version "0.1.7"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/judepayne/ednx/releases/download/0.1.7/ednx-macos-arm64.zip"
    sha256 "2ccb5ff9774b85401a5f2f553efc034bd6da88e6314f0e787087d656bc6815e9"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/judepayne/ednx/releases/download/0.1.7/ednx-linux-arm64.zip"
    sha256 "d8041682e28c8c9945b1ae529beaa39afa0b186ca724f315be7413aa74af200f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/judepayne/ednx/releases/download/0.1.7/ednx-linux-amd64.zip"
    sha256 "7d255249fd17cf3a57126d4ef4f614232c80d3b5c6df0b33cc298e86094cf8cf"
  end

  def install
    bin.install "ednx"
  end

  test do
    system "#{bin}/ednx", "-j", "<<< '{:test true}'"
  end
end
