class Dictim < Formula
  desc "Diagram-as-data library for converting between dictim syntax and D2/Graphviz formats"
  homepage "https://github.com/judepayne/dictim"
  version "0.9.0.4"

  depends_on "d2" => "~> 0.7.0"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/v0.9.0.4/dictim-0.9.0.4-macos-aarch64.zip"
    sha256 "6b72d24dbd7eabd076b7131f32875b61b77b2a1cb44fb927e9613a28e037ee94"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/judepayne/dictim/releases/download/v0.9.0.4/dictim-0.9.0.4-macos-amd64.zip"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/v0.9.0.4/dictim-0.9.0.4-linux-aarch64.zip"
    sha256 "0c7237c33b0e67e774d19ec33b758930a7474dc0819e8d925e7ae000c8599e0d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/judepayne/dictim/releases/download/v0.9.0.4/dictim-0.9.0.4-linux-amd64.zip"
    sha256 "c194d27e5e872fd43f53b0374529a5ab40ec69a93582f971a1e05105641007a0"
  end

  def install
    bin.install "dictim"
  end

  test do
    system "#{bin}/dictim", "--version"
  end
end
