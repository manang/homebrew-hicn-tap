class Libparc < Formula
  desc "Libparc library"
  homepage "https://github.com/FDio/cicn/blob/cframework/master/libparc/README.md"
  url "https://github.com/FDio/cicn/archive/cframework/master.zip"
  version "1.0"
  sha256 ""
  depends_on "cmake" => :build
  depends_on "openssl@1.1"
  depends_on "libevent"

  def install
    system "cmake", "libparc", *std_cmake_args
    system "make", "install", "-j"
  end

  test do
    system "false"
  end
end
