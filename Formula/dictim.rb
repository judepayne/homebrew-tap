class Dictim < Formula
  desc "Diagram-as-data library for converting between dictim syntax and D2/Graphviz formats"
  homepage "https://github.com/judepayne/dictim"
  version "0.9.3"

  depends_on "d2" => "~> 0.7.0"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/0.9.3/dict-0.9.3-macos-aarch64.zip"
    sha256 "76ced76665fff36f297f3f86f690df22291218574b7d2bed55c1d2f5b982e3a9"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/0.9.3/dict-0.9.3-linux-aarch64.zip"
    sha256 "f9ed296826b55aeafe754541e4a58dfbc1c55200a22ce8f2db514a80fca3fb32"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/judepayne/dictim/releases/download/0.9.3/dict-0.9.3-linux-amd64.zip"
    sha256 "7cf653e18b5717639cef71dc1ec7030ba78c774920c71758936c57786f3beda1"
  end

  def install
    bin.install "dict"
  end

  test do
    system "#{bin}/dict", "--version"
  end
end
