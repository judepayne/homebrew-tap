class Dictim < Formula
  desc "Diagram-as-data library for converting between dictim syntax and D2/Graphviz formats"
  homepage "https://github.com/judepayne/dictim"
  version "0.9.0.4"

  depends_on "d2" => "~> 0.7.0"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/v0.9.0.4/dictim-0.9.0.4-macos-aarch64.zip"
    sha256 "d467892219398c1101f1e366ebad70ea1d97ae682262f2cf6f50920d383dd05d"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/judepayne/dictim/releases/download/v0.9.0.4/dictim-0.9.0.4-macos-amd64.zip"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/v0.9.0.4/dictim-0.9.0.4-linux-aarch64.zip"
    sha256 "adfa1dc80b0ddaf58d5e4833c1e1023d30632e2c95db936001d8c0278aa743a1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/judepayne/dictim/releases/download/v0.9.0.4/dictim-0.9.0.4-linux-amd64.zip"
    sha256 "ee1ce3fb8d19094f10cd52f0e0255504306362e08766b16328cc325a1e9ab374"
  end

  def install
    bin.install "dictim"
  end

  test do
    system "#{bin}/dictim", "--version"
  end
end
