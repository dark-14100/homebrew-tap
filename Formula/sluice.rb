class Sluice < Formula
  desc "Air-gapped log ingestion, tamper-evident vaulting and OCSF normalization"
  homepage "https://github.com/dark-14100/sluice"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dark-14100/sluice/releases/download/v0.1.4/sluice_0.1.4_darwin_arm64.tar.gz"
      sha256 "cdddd97a87257f6285bb5c22cd26c67fd670266eda7e1e1e59cc37f34be62bf4"
    end
    on_intel do
      url "https://github.com/dark-14100/sluice/releases/download/v0.1.4/sluice_0.1.4_darwin_amd64.tar.gz"
      sha256 "6ef6cfd58a32a93944b1ddfaf896fa841420e9c04d6829efe96b041491126b3a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/dark-14100/sluice/releases/download/v0.1.4/sluice_0.1.4_linux_arm64.tar.gz"
      sha256 "9e9a238674220e1b6c5773b0475acc960b4c8b9668f73dd0379f2fddf5b5e1d2"
    end
    on_intel do
      url "https://github.com/dark-14100/sluice/releases/download/v0.1.4/sluice_0.1.4_linux_amd64.tar.gz"
      sha256 "7846644b272959e7e5f1f12d5fc1360a616226a3839e28604ccb2c778728c320"
    end
  end

  def install
    bin.install "sluice", "vaultctl", "ingestd"
  end

  test do
    assert_match "sluice", shell_output("#{bin}/sluice version")
  end
end
