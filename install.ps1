param(
  [string]$Team = "all",
  [string]$Skill = "",
  [string]$Agent = ""
)

$R = Split-Path -Parent $MyInvocation.MyCommand.Path
$C = "$env:USERPROFILE\.claude"

Write-Host "RIA Stack Team Installer" -ForegroundColor Cyan
Write-Host "Target: $C"
Write-Host ""

foreach ($d in @("agents","skills","commands")) {
  New-Item -ItemType Directory -Force -Path "$C\$d" | Out-Null
}

function Install-Skill($SkillPath, $SkillName) {
  if (Test-Path $SkillPath) {
    New-Item -ItemType Directory -Force -Path "$C\skills\$SkillName" | Out-Null
    Copy-Item "$SkillPath\*" "$C\skills\$SkillName\" -Recurse -Force
    Write-Host "  OK skill: $SkillName" -ForegroundColor Green
  }
}

function Install-Agent($AgentPath, $AgentName) {
  if (Test-Path "$AgentPath\agent.md") {
    Copy-Item "$AgentPath\agent.md" "$C\agents\$AgentName.md" -Force
    Write-Host "  OK agent: $AgentName" -ForegroundColor Green
  }
  if (Test-Path "$AgentPath\skills") {
    foreach ($s in Get-ChildItem "$AgentPath\skills" -Directory -ErrorAction SilentlyContinue) {
      Install-Skill $s.FullName $s.Name
    }
  }
}

$teams = @{
  "research" = @{
    agents = @("POLYXA")
    skills = @("deep-research","content-research-writer","article-extractor","meeting-insights-analyzer")
  }
  "strategy" = @{
    agents = @()
    skills = @("swot-analysis","porters-five-forces","pestle-analysis")
  }
  "ops" = @{
    agents = @()
    skills = @("internal-comms")
  }
  "output" = @{
    agents = @()
    skills = @("docx","pdf")
  }
  "meta" = @{
    agents = @()
    skills = @("create-skill")
  }
}

if ($Skill -ne "") {
  Install-Skill "$R\skills\$Skill" $Skill
} elseif ($Agent -ne "") {
  Install-Agent "$R\agents\$Agent" $Agent
} elseif ($Team -eq "all") {
  foreach ($t in $teams.Keys) {
    Write-Host "Team: $t" -ForegroundColor Yellow
    foreach ($a in $teams[$t].agents) { Install-Agent "$R\agents\$a" $a }
    foreach ($s in $teams[$t].skills) { Install-Skill "$R\skills\$s" $s }
  }
} else {
  if ($teams.ContainsKey($Team)) {
    Write-Host "Team: $Team" -ForegroundColor Yellow
    foreach ($a in $teams[$Team].agents) { Install-Agent "$R\agents\$a" $a }
    foreach ($s in $teams[$Team].skills) { Install-Skill "$R\skills\$s" $s }
  } else {
    Write-Host "Unknown team: $Team" -ForegroundColor Red
    Write-Host "Available: $($teams.Keys -join ', ')"
  }
}

Write-Host ""
Write-Host "Done." -ForegroundColor Cyan
