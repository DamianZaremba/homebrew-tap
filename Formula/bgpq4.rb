class Bgpq4 < Formula
  desc "BGP Filter generator"
  homepage "https://github.com/bgp/bgpq4"
  url "https://github.com/bgp/bgpq4/archive/0.0.6.tar.gz"
  sha256 "612d8eb7c3de07712e43b3e03e3b9d6b9b87e14333e56df3ccf198675a87a642"
  head "https://github.com/bgp/bgpq4.git"
  depends_on "automake"

  def install
    system "./bootstrap"
    system "./configure", "--prefix=#{prefix}", "--mandir=#{man}"
    system "make", "install"
  end

  test do
    system "#{bin}/bgpq4", "AS-ANY"
  end
end
