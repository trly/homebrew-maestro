cask "maestro" do
  version "0.4.9"
  sha256 "e60bffa5021a2a31e5af85d50f80846b33fa75b166cffe25707b6ef8b0cd2a9b"

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
