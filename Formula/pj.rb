# Template of the Homebrew formula of pj. On every vX.Y.Z tag, pj-github-homebrew
# (pointjungle-ci `github` component) fills in the version and the SHA-256
# placeholders below from dist/checksums.txt, and writes the result to
# PointJungle/homebrew-tap as Formula/pj.rb. Archive names follow
# name_template in .goreleaser.yaml.
class Pj < Formula
  desc "Command line tool of PointJungle"
  homepage "https://github.com/PointJungle/cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PointJungle/cli/releases/download/v1.0.0/pj_1.0.0_darwin_arm64.tar.gz"
      sha256 "2666d6c20a36e1a8d06e3fba4251dea53d54f28abcbaae251944d71b97c5cd70"
    end
    on_intel do
      url "https://github.com/PointJungle/cli/releases/download/v1.0.0/pj_1.0.0_darwin_amd64.tar.gz"
      sha256 "e0ccd491951d235fbf4db13b2164b6580bddc766467edba15ce74f56ee4a5aba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PointJungle/cli/releases/download/v1.0.0/pj_1.0.0_linux_arm64.tar.gz"
      sha256 "4bbe59c3e566bd967e5aa8310b1e575181329fc618196186b6da7cd63224adfa"
    end
    on_intel do
      url "https://github.com/PointJungle/cli/releases/download/v1.0.0/pj_1.0.0_linux_amd64.tar.gz"
      sha256 "4af8a15fe08d374d9c72fb96aebc6e0eb5e34d3cc5a8565503759d94efff7ef6"
    end
  end

  def install
    bin.install "pj"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pj version")
  end
end
