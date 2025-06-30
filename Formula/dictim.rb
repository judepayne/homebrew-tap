class Dictim < Formula
  desc "Diagram-as-data library for converting between dictim syntax and D2/Graphviz formats"
  homepage "https://github.com/judepayne/dictim"
  version "0.9.0.4"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/v#{version}/dictim-#{version}-macos-aarch64.zip"
    sha256 "SHA256_PLACEHOLDER_ARM64"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/judepayne/dictim/releases/download/v#{version}/dictim-#{version}-macos-amd64.zip"
    sha256 "SHA256_PLACEHOLDER_AMD64"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/v#{version}/dictim-#{version}-linux-aarch64.zip"
    sha256 "SHA256_PLACEHOLDER_LINUX_ARM64"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/judepayne/dictim/releases/download/v#{version}/dictim-#{version}-linux-amd64.zip"
    sha256 "SHA256_PLACEHOLDER_LINUX_AMD64"
  end

  def install
    bin.install "dictim"
  end

  test do
    system "#{bin}/dictim", "--version"
  end
end
