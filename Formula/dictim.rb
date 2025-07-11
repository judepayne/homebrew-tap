class Dictim < Formula
  desc "Diagram-as-data library for converting between dictim syntax and D2/Graphviz formats"
  homepage "https://github.com/judepayne/dictim"
  version "0.9.1"

  depends_on "d2" => "~> 0.7.0"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/0.9.1/dict-0.9.1-macos-aarch64.zip"
    sha256 "8743a4c03c84df6eb1e51852113ca2b3f7f7efabec98e81f2df1d314563ab1ac"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/judepayne/dictim/releases/download/0.9.1/dict-0.9.1-macos-amd64.zip"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/0.9.1/dict-0.9.1-linux-aarch64.zip"
    sha256 "91e378c52dd7abc70519883c9a45cf0bddcb6bbfc36f16c36872845355a4dbb0"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/judepayne/dictim/releases/download/0.9.1/dict-0.9.1-linux-amd64.zip"
    sha256 "711aefdfdbbf59e598af8943f45604e4546af012e82a74eadad0575d1684463e"
  end

  def install
    bin.install "dict"
  end

  test do
    system "#{bin}/dict", "--version"
  end
end
