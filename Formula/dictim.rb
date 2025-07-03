class Dictim < Formula
  desc "Diagram-as-data library for converting between dictim syntax and D2/Graphviz formats"
  homepage "https://github.com/judepayne/dictim"
  version "0.9.0.4"

  depends_on "d2" => "~> 0.7.0"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/v0.9.0.4/dictim-0.9.0.4-macos-aarch64.zip"
    sha256 "cb62d4f63b987ec284fad5591f5823c5b71e03667f2e8230e15915d4f2b42a23"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/judepayne/dictim/releases/download/v0.9.0.4/dictim-0.9.0.4-macos-amd64.zip"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/v0.9.0.4/dictim-0.9.0.4-linux-aarch64.zip"
    sha256 "76d919f5298c01733dce06f6504826835540a3f74f626ef00a84b3cd53944f44"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/judepayne/dictim/releases/download/v0.9.0.4/dictim-0.9.0.4-linux-amd64.zip"
    sha256 "daa7c26cda07dbe29341b9e9e1ef78245397f949bbdf0beca111a790ee4110a1"
  end

  def install
    bin.install "dictim"
  end

  test do
    system "#{bin}/dictim", "--version"
  end
end
