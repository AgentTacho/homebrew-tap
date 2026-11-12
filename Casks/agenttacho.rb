cask "agenttacho" do
  version "0.11.1"
  sha256 "efe87fdc31b16b419f3f4b27074b4e7e01da6825a9aefae1d9c031dc79a229ed"

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
