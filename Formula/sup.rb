class Sup < Formula
  desc "Configurable changelog generator for git repositories."
  homepage "https://github.com/umurgdk/sup"
  url "https://github.com/umurgdk/sup/archive/v1.0.1.tar.gz"
  version "1.0.1"
  sha256 "234994f7621d264df0a1990dae085b951c60fbb9b503c8c060d4f2b1f533c641"

  depends_on "cmake" => :build
  depends_on "boost"
  depends_on "libgit2"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
