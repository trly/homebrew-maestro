cask "maestro" do
  version "0.4.13"
  sha256 "d21ef43e265ea5a06dc6a3fd16da67b93d9e83e2a688a7678e8a34be00760e4c"

  url "https://github.com/trly/maestro/releases/download/v#{version}/Maestro.app.zip"
  name "Maestro"
  desc "AI Prompt Orchestrator for multi-repo workflows"
  homepage "https://github.com/trly/maestro"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Maestro.app"

  caveats do
    <<~EOS
      This app is not notarized. Install with:
        brew install --cask --no-quarantine #{token}
    EOS
  end

  zap trash: [
    "~/Library/Application Support/dev.trly.maestro",
    "~/Library/Logs/dev.trly.maestro",
  ]
end
