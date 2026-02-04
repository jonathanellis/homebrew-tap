class ClaudeProfiles < Formula
  desc "Manage multiple Claude configuration profiles"
  homepage "https://github.com/jonathanellis/claude-profiles"
  url "https://github.com/jonathanellis/claude-profiles/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d192b6b122e07e9649793171f338c0febf173226e5469cb1d4d0542615c33362"
  license "MIT"

  def install
    bin.install "claude-profiles"
  end

  def post_install
    system "#{bin}/claude-profiles", "install"
  end

  def caveats
    <<~EOS
      Shell integration has been added to your shell config.
      Restart your shell or run: source ~/.zshrc (or ~/.bashrc)

      Before uninstalling, run: claude-profiles uninstall
    EOS
  end

  test do
    system "#{bin}/claude-profiles", "help"
  end
end
