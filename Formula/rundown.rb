# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rundown < Formula
  desc "Rundown runs Markdown files, making them powerful and pretty console applications"
  homepage "https://github.com/elseano/rundown"
  version "0.4.0-beta.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/elseano/rundown/releases/download/v0.4.0-beta.23/rundown_0.4.0-beta.23_Darwin_x86_64.tar.gz"
      sha256 "e85043ca67f75c27a1ed795a6ebcd0bcee4a02ebecf8de81af1a28c1febadfd9"

      def install
        bin.install "rundown"

        output = Utils.safe_popen_read("#{bin}/rundown", "--completions", "bash")
        (bash_completion/"rundown").write output

        output = Utils.safe_popen_read("#{bin}/rundown", "--completions", "zsh")
        (zsh_completion/"rundown").write output

        output = Utils.safe_popen_read("#{bin}/rundown", "--completions", "fish")
        (fish_completion/"rundown").write output
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/elseano/rundown/releases/download/v0.4.0-beta.23/rundown_0.4.0-beta.23_Darwin_arm64.tar.gz"
      sha256 "1543787d5c9c899aaf99798bfbea1c48adfedc654969ee350557c40e7602e763"

      def install
        bin.install "rundown"

        output = Utils.safe_popen_read("#{bin}/rundown", "--completions", "bash")
        (bash_completion/"rundown").write output

        output = Utils.safe_popen_read("#{bin}/rundown", "--completions", "zsh")
        (zsh_completion/"rundown").write output

        output = Utils.safe_popen_read("#{bin}/rundown", "--completions", "fish")
        (fish_completion/"rundown").write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/elseano/rundown/releases/download/v0.4.0-beta.23/rundown_0.4.0-beta.23_Linux_arm64.tar.gz"
      sha256 "953475349dbec1523c58bea16f9970337345de5b6bb0a3be524dd775a75f0d0c"

      def install
        bin.install "rundown"

        output = Utils.safe_popen_read("#{bin}/rundown", "--completions", "bash")
        (bash_completion/"rundown").write output

        output = Utils.safe_popen_read("#{bin}/rundown", "--completions", "zsh")
        (zsh_completion/"rundown").write output

        output = Utils.safe_popen_read("#{bin}/rundown", "--completions", "fish")
        (fish_completion/"rundown").write output
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/elseano/rundown/releases/download/v0.4.0-beta.23/rundown_0.4.0-beta.23_Linux_x86_64.tar.gz"
      sha256 "efc8a42265f0b30fb0175340e45e9f3f48b7a6554ba94b02d829b56a1f20df6c"

      def install
        bin.install "rundown"

        output = Utils.safe_popen_read("#{bin}/rundown", "--completions", "bash")
        (bash_completion/"rundown").write output

        output = Utils.safe_popen_read("#{bin}/rundown", "--completions", "zsh")
        (zsh_completion/"rundown").write output

        output = Utils.safe_popen_read("#{bin}/rundown", "--completions", "fish")
        (fish_completion/"rundown").write output
      end
    end
  end

  test do
    assert_match "rundown version #{version}", shell_output("#{bin}/rundown --version")
  end
end
