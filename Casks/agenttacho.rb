cask "agenttacho" do
  version "0.6.2"
  sha256 "33709b958875e5bc4f87217c19dbba29f5fcd2efbb3f867d795a9d2ec527cee1"

  url "https://github.com/AgentTacho/agenttacho/releases/download/v#{version}/AgentTacho-#{version}.dmg"
  name "AgentTacho"
  desc "Menu bar meter for coding-agent usage limits and budgets"
  homepage "https://github.com/AgentTacho/agenttacho"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "AgentTacho.app"

  uninstall quit: "dev.rhuss.agenttacho"

  zap trash: [
    "~/.config/agenttacho",
    "~/Library/Application Support/agenttacho",
    "~/Library/Logs/agenttacho",
    "~/Library/Preferences/dev.rhuss.agenttacho.plist",
  ]

  caveats <<~EOS
    Homebrew quits AgentTacho before an upgrade and opens it
    again afterwards.
  EOS
end
