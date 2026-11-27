# Removes Closer on Windows: only the skill folders our installer marked as ours. Nothing you made with it is ever touched.
$ErrorActionPreference = "Stop"
$Commands = @("record-keeper", "prospector", "follow-up", "sales-coach", "contract-writer", "researcher", "scheduler", "pipeline", "proposal-writer", "win-back", "forecaster")   # written by scripts/sync.py from skill.json
$removed = 0
foreach ($base in "closer", "bmac-closer") {
  foreach ($name in @($base) + @($Commands | ForEach-Object { "$base-$_" })) {
    $dir = Join-Path $HOME ".claude\skills\$name"
    if (-not (Test-Path -LiteralPath $dir)) { continue }
    if (Test-Path -LiteralPath (Join-Path $dir ".closer-install")) {
      Remove-Item -Recurse -Force -LiteralPath $dir; $removed++
    } else {
      Write-Output "Left $dir alone: Closer did not install it."
    }
  }
}
if ($removed -gt 0) { Write-Output "Removed Closer ($removed skill folders)." } else { Write-Output "Closer was not installed." }
