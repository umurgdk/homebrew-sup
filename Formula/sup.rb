class Sup < Formula
  desc "Configurable changelog generator for git repositories."
  homepage "https://github.com/umurgdk/sup"
  url "https://github.com/umurgdk/sup/archive/v1.1.0.tar.gz"
  version "1.1.0"
  sha256 "d9f80b8c3368037e1058df698bd3d4451fd5b64bb6d554fc2593454d79e2a5f1"

  depends_on "cmake" => :build
  depends_on "boost"
  depends_on "libgit2"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
