class Sluice < Formula
  desc "Air-gapped log ingestion, tamper-evident vaulting and OCSF normalization"
  homepage "https://github.com/dark-14100/sluice"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dark-14100/sluice/releases/download/v0.1.2/sluice_0.1.2_darwin_arm64.tar.gz"
      sha256 "010a8ddf573ab0fb256bd54f3d05a9fd7e183613a062bab9d12b7259dc5eb5de"
    end
    on_intel do
      url "https://github.com/dark-14100/sluice/releases/download/v0.1.2/sluice_0.1.2_darwin_amd64.tar.gz"
      sha256 "9f04935bc3f3ad0246d12a1783254fbee07c0d6a8bc561568a0e2465aa857889"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/dark-14100/sluice/releases/download/v0.1.2/sluice_0.1.2_linux_arm64.tar.gz"
      sha256 "40fb09d15bca55b3a3560a407d2ece19a152d166d4a6253d2a7f06ddbc79a451"
    end
    on_intel do
      url "https://github.com/dark-14100/sluice/releases/download/v0.1.2/sluice_0.1.2_linux_amd64.tar.gz"
      sha256 "6915a9e2b9c37bf6e82c3dc319e7e996e22d941065fb0016979e1d0316a9cdf6"
    end
  end

  def install
    bin.install "sluice", "vaultctl", "ingestd"
  end

  test do
    assert_match "sluice", shell_output("#{bin}/sluice version")
  end
end
