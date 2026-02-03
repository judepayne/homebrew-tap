class Dictim < Formula
  desc "Diagram-as-data library for converting between dictim syntax and D2/Graphviz formats"
  homepage "https://github.com/judepayne/dictim"
  version "0.9.2"

  depends_on "d2" => "~> 0.7.0"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/0.9.2/dict-0.9.2-macos-aarch64.zip"
    sha256 "ba3f422d7b686090af406e260602379765b46345ff358d999acdeff089eb4d39"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/0.9.2/dict-0.9.2-linux-aarch64.zip"
    sha256 "acbdd9bb21cc31c79a7fc68df2707feb3b4ef96c012e8bd95deed189540de400"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/judepayne/dictim/releases/download/0.9.2/dict-0.9.2-linux-amd64.zip"
    sha256 "88765c01d4fd4e887d163fcb1f352167ca0123f990932792d70f072ad5cf3cc4"
  end

  def install
    bin.install "dict"
  end

  test do
    system "#{bin}/dict", "--version"
  end
end
