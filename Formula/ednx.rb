class Ednx < Formula
  desc "Go library and CLI tool for converting between EDN and JSON formats"
  homepage "https://github.com/judepayne/ednx"
  version "0.1.8"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/judepayne/ednx/releases/download/0.1.8/ednx-macos-arm64.zip"
    sha256 "a34c8845d8189860048fdeb96c10f884ca3c3f17c7d6836f3285b9ce8d0870ab"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/judepayne/ednx/releases/download/0.1.8/ednx-linux-arm64.zip"
    sha256 "667c2cbe156a4462f2db19006c5dce102eba8f8eef14d797d16f8b5fc1ba4d8e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/judepayne/ednx/releases/download/0.1.8/ednx-linux-amd64.zip"
    sha256 "66dffb7ac952540d18fe3cae45aca578acc52e16e573ea636d24f8135dbf1e49"
  end

  def install
    bin.install "ednx"
  end

  test do
    system "#{bin}/ednx", "-j", "<<< '{:test true}'"
  end
end
