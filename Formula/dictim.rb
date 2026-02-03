class Dictim < Formula
  desc "Diagram-as-data library for converting between dictim syntax and D2/Graphviz formats"
  homepage "https://github.com/judepayne/dictim"
  version "0.9.2"

  depends_on "d2" => "~> 0.7.0"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/0.9.2/dict-0.9.2-macos-aarch64.zip"
    sha256 "1bd1971bee9a7978c5dc086a9d695215dc20b1cb66a5f647ae8b2296c7117158"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/0.9.2/dict-0.9.2-linux-aarch64.zip"
    sha256 "fdec9292c4d31b24ce0ba526763e9612d1bac001b9af1082519b6b783bda54b9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/judepayne/dictim/releases/download/0.9.2/dict-0.9.2-linux-amd64.zip"
    sha256 "35116433f7b7f4997e667415c68f1e348a69458dec4058e5f737f1b8bc18d5d8"
  end

  def install
    bin.install "dict"
  end

  test do
    system "#{bin}/dict", "--version"
  end
end
