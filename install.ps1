param(
    [ValidateSet("all", "codex", "claude", "cursor")]
    [string]$Target = "all",

    [ValidateSet("user", "project")]
    [string]$Scope = "user"
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$SkillName = "paid-ai-writing-sop"
$ScriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$SourceSkill = Join-Path $ScriptRoot "Skills\$SkillName"
$ProjectRoot = (Get-Location).Path
$HomeDir = [Environment]::GetFolderPath("UserProfile")

if (-not (Test-Path -LiteralPath (Join-Path $SourceSkill "SKILL.md"))) {
    throw "Missing source skill: $SourceSkill"
}

function Get-SkillsRoot {
    param(
        [string]$Platform,
        [string]$InstallScope
    )

    switch ("${Platform}:${InstallScope}") {
        "codex:user"   { return (Join-Path $HomeDir ".agents\skills") }
        "codex:project"{ return (Join-Path $ProjectRoot ".agents\skills") }
        "claude:user"  { return (Join-Path $HomeDir ".claude\skills") }
        "claude:project"{ return (Join-Path $ProjectRoot ".claude\skills") }
        "cursor:user"  { return (Join-Path $HomeDir ".cursor\skills") }
        "cursor:project"{ return (Join-Path $ProjectRoot ".cursor\skills") }
        default { throw "Unsupported target/scope: $Platform / $InstallScope" }
    }
}

function Get-ValidationHint {
    param([string]$Platform)

    switch ($Platform) {
        "codex"  { return "在 Codex 中打开 /skills 或显式提及 `$paid-ai-writing-sop" }
        "claude" { return "在 Claude Code 中输入 /paid-ai-writing-sop" }
        "cursor" { return "在 Cursor Settings > Rules 中确认出现该 skill，并在聊天里输入 /paid-ai-writing-sop" }
        default  { return "N/A" }
    }
}

function Install-Skill {
    param([string]$Platform)

    $skillsRoot = Get-SkillsRoot -Platform $Platform -InstallScope $Scope
    $destination = Join-Path $skillsRoot $SkillName
    $backupPath = $null

    $skillsParent = Split-Path -Parent $skillsRoot
    if (-not (Test-Path -LiteralPath $skillsParent)) {
        New-Item -ItemType Directory -Path $skillsParent -Force | Out-Null
    }
    if (-not (Test-Path -LiteralPath $skillsRoot)) {
        New-Item -ItemType Directory -Path $skillsRoot -Force | Out-Null
    }

    if (Test-Path -LiteralPath $destination) {
        $timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
        $backupPath = "$destination.backup-$timestamp"
        Move-Item -LiteralPath $destination -Destination $backupPath
    }

    Copy-Item -LiteralPath $SourceSkill -Destination $destination -Recurse -Force

    return [pscustomobject]@{
        Platform   = $Platform
        Scope      = $Scope
        Installed  = $destination
        Backup     = $backupPath
        Validation = Get-ValidationHint -Platform $Platform
    }
}

$Platforms = if ($Target -eq "all") { @("codex", "claude", "cursor") } else { @($Target) }
$Results = foreach ($platform in $Platforms) {
    Install-Skill -Platform $platform
}

Write-Host ""
Write-Host "Installed skill pack: $SkillName"
Write-Host "Scope: $Scope"
Write-Host ""

foreach ($result in $Results) {
    Write-Host "[$($result.Platform)]"
    Write-Host "  Installed: $($result.Installed)"
    if ($result.Backup) {
        Write-Host "  Backup:    $($result.Backup)"
    }
    Write-Host "  Verify:    $($result.Validation)"
    Write-Host ""
}

if ($Scope -eq "project") {
    Write-Host "Project scope uses the current working directory:"
    Write-Host "  $ProjectRoot"
}
