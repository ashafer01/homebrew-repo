class HelmRelease < Formula
  desc "Simplified Helm Chart deployment tool"
  homepage "https://github.com/ashafer01/helm-release"
  url "https://github.com/ashafer01/helm-release/archive/v0.1.1.tar.gz"
  sha256 "b2b070a59f2637e242816a085d53bd2209bafa698c56130ecbe6f1351e69bb57"

  depends_on "helm"
  depends_on "jq"
  depends_on "kubernetes-cli"
  depends_on "kustomize"

  def install
    mkdir "#{bin}"
    cp "helm-release", "#{bin}/helm-release"
  end

  test do
    system "helm-release", "version"
  end
end
