cask "agenttacho" do
  version "0.6.0"
  sha256 "f666006eaba7c0cf53c572aca4facfdf230a2af89f1c39a98ba63908c1c0afbd"

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
