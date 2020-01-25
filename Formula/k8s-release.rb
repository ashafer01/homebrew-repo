class K8sRelease < Formula
  desc "A tool for performing repeatable deployments of static Kubernetes manifest files"
  homepage "https://github.com/ashafer01/k8s-release"
  url "https://github.com/ashafer01/k8s-release/archive/v0.1.0.tar.gz"
  sha256 "86f9888bb0bd43398c16667c919864fd789ce8b5490bddc171d332dd99bda53b"

  depends_on "wget"
  depends_on "kustomize"
  depends_on "kubernetes-cli"

  def install
    mkdir "#{bin}"
    cp "k8s-release", "#{bin}/k8s-release"
  end

  test do
    system "k8s-release", "version"
  end
end
