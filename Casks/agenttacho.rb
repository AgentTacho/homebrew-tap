cask "agenttacho" do
  version "0.11.0"
  sha256 "f5eaef4d64fff31c6ca5c67d3be50dbd5251b093977f4ce4153b4be3d8ee2172"

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
