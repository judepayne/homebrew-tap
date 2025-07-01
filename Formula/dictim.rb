class Dictim < Formula
  desc "Diagram-as-data library for converting between dictim syntax and D2/Graphviz formats"
  homepage "https://github.com/judepayne/dictim"
  version "0.9.0.4"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/v0.9.0.4/dictim-0.9.0.4-macos-aarch64.zip"
    sha256 "526831229d725f84b74b6eac6bbbd0a1fa82114fa68117cac6a3bfd185ed3828"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/judepayne/dictim/releases/download/v0.9.0.4/dictim-0.9.0.4-macos-amd64.zip"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/v0.9.0.4/dictim-0.9.0.4-linux-aarch64.zip"
    sha256 "1d3c5d4c9beaf69daaa70e5c229b37589bada4d6b059dbcb7ebb1f33d951a75a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/judepayne/dictim/releases/download/v0.9.0.4/dictim-0.9.0.4-linux-amd64.zip"
    sha256 "e291ead0d6c91af4aa47aa5b4bc90db44ffff4c8c7d965d7a9338cfebd8ef8b7"
  end

  def install
    bin.install "dictim"
  end

  test do
    system "#{bin}/dictim", "--version"
  end
end
