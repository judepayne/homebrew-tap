class Dictim < Formula
  desc "Diagram-as-data library for converting between dictim syntax and D2/Graphviz formats"
  homepage "https://github.com/judepayne/dictim"
  version "0.9.1"

  depends_on "d2" => "~> 0.7.0"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/0.9.1/dict-0.9.1-macos-aarch64.zip"
    sha256 "e3ddd86c59f36ce3ef7e4045704375c48df4516aa620ed76e48c53b39859cab0"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/judepayne/dictim/releases/download/0.9.1/dict-0.9.1-macos-amd64.zip"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/0.9.1/dict-0.9.1-linux-aarch64.zip"
    sha256 "f75c6ef83c8c1701583f60a20dd16478da5e9947cd1b2a7c205bf0fd7d4fd1fc"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/judepayne/dictim/releases/download/0.9.1/dict-0.9.1-linux-amd64.zip"
    sha256 "6275ce512d9965364175dae02eb64fe9ef3a85548d6b7f4c8d19ac10e836f081"
  end

  def install
    bin.install "dict"
  end

  test do
    system "#{bin}/dict", "--version"
  end
end
