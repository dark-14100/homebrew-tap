class Sluice < Formula
  desc "Air-gapped log ingestion, tamper-evident vaulting and OCSF normalization"
  homepage "https://github.com/dark-14100/sluice"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dark-14100/sluice/releases/download/v0.1.0/sluice_0.1.0_darwin_arm64.tar.gz"
      sha256 "c682f986ceaf9243653589340cdb9783ded302817e5b495b9def2e93d42a02b4"
    end
    on_intel do
      url "https://github.com/dark-14100/sluice/releases/download/v0.1.0/sluice_0.1.0_darwin_amd64.tar.gz"
      sha256 "16155641185f50c457c37676e02ef2fa16d451faeb4652464a26ac2a5d7ee63d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/dark-14100/sluice/releases/download/v0.1.0/sluice_0.1.0_linux_arm64.tar.gz"
      sha256 "c4f3b832c2f56a7548b7c84a6983a8daf210b705ac6d9327b685b64752a1dfde"
    end
    on_intel do
      url "https://github.com/dark-14100/sluice/releases/download/v0.1.0/sluice_0.1.0_linux_amd64.tar.gz"
      sha256 "b3ebbad6fe58e54fe813576a4f5cac74d19d6bbc43b2f17f9b5152f2372192eb"
    end
  end

  def install
    bin.install "sluice", "vaultctl", "ingestd"
  end

  test do
    assert_match "sluice", shell_output("#{bin}/sluice version")
  end
end
