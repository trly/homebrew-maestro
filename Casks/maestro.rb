cask "maestro" do
  version "0.4.10"
  sha256 "f68c1fc6213959c1b107ded7763a869290e3b3d1e925a972db8c7c12f87f9dcb"

  url "https://github.com/trly/maestro/releases/download/v#{version}/Maestro.app.zip"
  name "Maestro"
  desc "AI Prompt Orchestrator for multi-repo workflows"
  homepage "https://github.com/trly/maestro"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Maestro.app"

  zap trash: [
    "~/Library/Application Support/dev.trly.maestro",
    "~/Library/Logs/dev.trly.maestro",
  ]
end
