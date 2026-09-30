class Sluice < Formula
  desc "Air-gapped log ingestion, tamper-evident vaulting and OCSF normalization"
  homepage "https://github.com/dark-14100/sluice"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dark-14100/sluice/releases/download/v0.1.3/sluice_0.1.3_darwin_arm64.tar.gz"
      sha256 "f0482aac53c3594e9520e4745db0cf348668fe1b561571c80148c66e49e94768"
    end
    on_intel do
      url "https://github.com/dark-14100/sluice/releases/download/v0.1.3/sluice_0.1.3_darwin_amd64.tar.gz"
      sha256 "bce8562f5191a00c99cbd3342440d5677eb260e94078783a650425f2b9cbef13"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/dark-14100/sluice/releases/download/v0.1.3/sluice_0.1.3_linux_arm64.tar.gz"
      sha256 "028cc507d0c2a095219de306984cc57f79ff4d4c10fddd3b233012936d313560"
    end
    on_intel do
      url "https://github.com/dark-14100/sluice/releases/download/v0.1.3/sluice_0.1.3_linux_amd64.tar.gz"
      sha256 "445aa7432693bcfafea1c088131d805b136df49526efc257e06bf7dcf06eb0c5"
    end
  end

  def install
    bin.install "sluice", "vaultctl", "ingestd"
  end

  test do
    assert_match "sluice", shell_output("#{bin}/sluice version")
  end
end
