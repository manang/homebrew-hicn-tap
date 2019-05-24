class Hicn-master < Formula
  desc "Hicn stack"
  homepage "https://wiki.fd.io/view/HICN"
  url "https://github.com/FDio/hicn/archive/master.zip"
  version "99.99"
  sha256 ""
  depends_on "cmake" => :build
  depends_on "libparc"
  depends_on "curl"
  depends_on "asio"
  conflicts_with "hicn", :because => "the name of the generated binaries are the same"
  def install
    system "cmake", ".", "-DBUILD_APPS=ON",*std_cmake_args
    system "make", "install" , "-j"
  end

  test do
    system "false"
  end
end
