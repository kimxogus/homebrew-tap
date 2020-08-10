# This file was generated by GoReleaser. DO NOT EDIT.
class KubeScore < Formula
  desc ""
  homepage "https://kube-score.com/"
  version "1.8.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/zegl/kube-score/releases/download/v1.8.0/kube-score_1.8.0_darwin_amd64.tar.gz"
    sha256 "d81f40c5507716370173de4bc35b001928cba33d151c59e6ee24c11d09f8a051"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/zegl/kube-score/releases/download/v1.8.0/kube-score_1.8.0_linux_amd64.tar.gz"
      sha256 "cb4464540ee87a27970aaf54a9b7b43ba20c617ddee7e693cb5694249faeb5df"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/zegl/kube-score/releases/download/v1.8.0/kube-score_1.8.0_linux_arm64.tar.gz"
        sha256 "0cadc65ae49c3a0c04c813e00f17fee31d38b826d44a764839e0d1514950c569"
      else
        url "https://github.com/zegl/kube-score/releases/download/v1.8.0/kube-score_1.8.0_linux_armv6.tar.gz"
        sha256 "8fb533d3ae32e851347400016e4851350e018a02690389fb8cef87f368f1c702"
      end
    end
  end

  def install
    bin.install "kube-score"
  end
end
