cask "maestro" do
  version "0.4.12"
  sha256 "cdfc1de8a577e4b4203ac346d1836837d0a45445df929286b6808236086eedc8"

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
