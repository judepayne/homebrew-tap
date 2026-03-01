class Dictim < Formula
  desc "Diagram-as-data library for converting between dictim syntax and D2/Graphviz formats"
  homepage "https://github.com/judepayne/dictim"
  version "0.9.4"

  depends_on "d2" => "~> 0.7.0"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/0.9.4/dict-0.9.4-macos-aarch64.zip"
    sha256 "a4f2443403bddee41f0c6765effa1666f5d3b6c5aebca35bdc9479db11b2d1b4"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/0.9.4/dict-0.9.4-linux-aarch64.zip"
    sha256 "166d66d9ee7ac397feda9e53481382ebbde5fd5ef946c0b97ca408dfb3289901"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/judepayne/dictim/releases/download/0.9.4/dict-0.9.4-linux-amd64.zip"
    sha256 "b7cedf5f5318183d2fb87e1db9be847b3fe0e7be0ef756a39aad922f5fe50596"
  end

  def install
    bin.install "dict"
  end

  test do
    system "#{bin}/dict", "--version"
  end
end
