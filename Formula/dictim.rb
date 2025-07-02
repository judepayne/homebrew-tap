class Dictim < Formula
  desc "Diagram-as-data library for converting between dictim syntax and D2/Graphviz formats"
  homepage "https://github.com/judepayne/dictim"
  version "0.9.0.4"

  depends_on "d2" => "~> 0.7.0"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/v0.9.0.4/dictim-0.9.0.4-macos-aarch64.zip"
    sha256 "1842fe5c64d6c3f6d0f060db0706433196aa3a4bad5a132c89aa99c94cf75004"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/judepayne/dictim/releases/download/v0.9.0.4/dictim-0.9.0.4-macos-amd64.zip"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/v0.9.0.4/dictim-0.9.0.4-linux-aarch64.zip"
    sha256 "93d6e2ff635d200def8191183a5a5b7dce658f13f7cd9003ee562343a2922c33"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/judepayne/dictim/releases/download/v0.9.0.4/dictim-0.9.0.4-linux-amd64.zip"
    sha256 "fea3bc7b06eb3ff3f9f141cda2c41fd36c6854040133d3fd8858bbaf57a82e10"
  end

  def install
    bin.install "dictim"
  end

  test do
    system "#{bin}/dictim", "--version"
  end
end
