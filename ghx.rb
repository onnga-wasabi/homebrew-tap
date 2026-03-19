class Ghx < Formula
  desc "A keyboard-driven TUI for GitHub — PRs, Issues, Actions, and Notifications in one place"
  homepage "https://github.com/onnga-wasabi/ghx"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/onnga-wasabi/ghx/releases/download/v0.3.0/ghx_darwin_amd64.tar.gz"
      sha256 "7b118aafcecaeace4b606625e2c5b98d7243c176280f9563185571ab52036d9f"
    end

    on_arm do
      url "https://github.com/onnga-wasabi/ghx/releases/download/v0.3.0/ghx_darwin_arm64.tar.gz"
      sha256 "aa6c8ea28c6fd810fabe45127a0e494e481d378c717414eea292ceb76a8afaa0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/onnga-wasabi/ghx/releases/download/v0.3.0/ghx_linux_amd64.tar.gz"
      sha256 "033a49ee4d281e673700adcae3ede42100943e65c1d6cf5ace5487611f89e88d"
    end

    on_arm do
      url "https://github.com/onnga-wasabi/ghx/releases/download/v0.3.0/ghx_linux_arm64.tar.gz"
      sha256 "4b5b7edb865147ca3e905af37053708af427c46333ba7c79549bc52e4552b1f5"
    end
  end

  def install
    bin.install "ghx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ghx --version")
  end
end
