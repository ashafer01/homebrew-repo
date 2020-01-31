class HelmRelease < Formula
  desc "Simplified Helm Chart deployment tool"
  homepage "https://github.com/ashafer01/helm-release"
  url "https://github.com/ashafer01/helm-release/archive/v0.1.2.tar.gz"
  sha256 "07e42789b0736eb9de4e8c1e75ae953a2eb2b20e5488e5abe8538358811c0b43"

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
