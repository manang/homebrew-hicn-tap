class Hicn < Formula
  desc "Hicn stack"
  homepage ""
  url "https://github.com/FDio/hicn/archive/master.zip"
  version "1.0"
  sha256 ""
  depends_on "cmake" => :build
  depends_on "libparc"
  depends_on "curl"
  depends_on "asio"
  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "ls -la"
    system "cmake", ".", "-DBUILD_APPS=ON",*std_cmake_args
    system "make", "install" # if this fails, try separate make/make install steps
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test libparc`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
