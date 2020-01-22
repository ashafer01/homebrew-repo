class HelmRelease < Formula
  desc "Simplified Helm Chart deployment tool"
  homepage "https://github.com/ashafer01/helm-release"
  url "https://github.com/ashafer01/helm-release/archive/v0.1.0.tar.gz"
  sha256 "4f1ccfcfd8dd2d52c6f8bb8a0699644ce0bc53a50f740b3252bb910bc9e61c6b"

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
