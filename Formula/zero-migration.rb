class ZeroMigration < Formula
  desc "The simplest possible database schema migration tool"
  homepage "https://github.com/ashafer01/zero-migration"
  url "https://github.com/ashafer01/zero-migration/archive/v0.1.0.tar.gz"
  sha256 "945b7f22f5d24ba63963cf2948f947c8f1efe6f3daf8fef167574787a866ac85"

  def install
    mkdir "#{bin}"
    cp "zero-migration", "#{bin}/zero-migration"
  end

  test do
    system "zero-migration"
  end
end
