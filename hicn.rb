class HicnMaster < Formula
  desc "Hicn stack"
  homepage "https://wiki.fd.io/view/HICN"
  url "https://github.com/FDio/hicn/archive/master.zip"
  version "19.04-58-g7548d3f"
  
  depends_on "cmake" => :build
  depends_on "libparc"
  depends_on "curl"
  depends_on "asio"
  def install
    system "cmake", ".", "-DBUILD_APPS=ON",*std_cmake_args
    system "make", "install" , "-j"
  end
  test do
    system "false"
  end
end
