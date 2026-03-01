class Dictim < Formula
  desc "Diagram-as-data library for converting between dictim syntax and D2/Graphviz formats"
  homepage "https://github.com/judepayne/dictim"
  version "0.9.4"

  depends_on "d2" => "~> 0.7.0"
  
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/0.9.4/dict-0.9.4-macos-aarch64.zip"
    sha256 "71ee903e69f680b187aa45fd286816ed8cd0b988d00337a9a14a30d697f6fc09"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/judepayne/dictim/releases/download/0.9.4/dict-0.9.4-linux-aarch64.zip"
    sha256 "01211ea1d9ee3547e5769a67f98ad5b2ba09af7f683383179eae5ee7f02ba9cf"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/judepayne/dictim/releases/download/0.9.4/dict-0.9.4-linux-amd64.zip"
    sha256 "5f4d34dcf0a3f83f56e2b65dce8d13bf06675c0700ad5cd29741531102174c22"
  end

  def install
    bin.install "dict"
  end

  test do
    system "#{bin}/dict", "--version"
  end
end
