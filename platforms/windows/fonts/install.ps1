<#
.SYNOPSIS
    Obsidian Verdant — Windows 推荐字体一键安装脚本
.DESCRIPTION
    自动下载并安装 Cascadia Code 和 JetBrains Mono 字体。
    需要管理员权限以安装系统级字体。
.NOTES
    版本: 1.0
    作者: tsingke
#>

#Requires -RunAsAdministrator

$ErrorActionPreference = "Stop"

$Fonts = @(
    @{
        Name = "Cascadia Code"
        Url  = "https://github.com/microsoft/cascadia-code/releases/download/v2404.23/CascadiaCode-2404.23.zip"
        Zip  = "$env:TEMP\CascadiaCode.zip"
        Dir  = "$env:TEMP\CascadiaCode"
    },
    @{
        Name = "JetBrains Mono"
        Url  = "https://github.com/JetBrains/JetBrainsMono/releases/download/v2.304/JetBrainsMono-2.304.zip"
        Zip  = "$env:TEMP\JetBrainsMono.zip"
        Dir  = "$env:TEMP\JetBrainsMono"
    }
)

$FontDir = "$env:LOCALAPPDATA\Microsoft\Windows\Fonts"

Write-Host "=== Obsidian Verdant 字体安装 ===" -ForegroundColor Green
Write-Host ""

foreach ($font in $Fonts) {
    Write-Host ">>> 正在安装: $($font.Name) ..." -ForegroundColor Cyan
    
    # Download
    Write-Host "    下载中: $($font.Url)" -ForegroundColor Gray
    Invoke-WebRequest -Uri $font.Url -OutFile $font.Zip -UseBasicParsing
    
    # Extract
    Write-Host "    解压中..." -ForegroundColor Gray
    Expand-Archive -Path $font.Zip -DestinationPath $font.Dir -Force
    
    # Find and install TTF files
    $ttfFiles = Get-ChildItem -Path $font.Dir -Recurse -Filter "*.ttf"
    $count = 0
    foreach ($ttf in $ttfFiles) {
        $dest = Join-Path $FontDir $ttf.Name
        Copy-Item -Path $ttf.FullName -Destination $dest -Force
        # Register font in registry
        $regPath = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts"
        $regName = "$($ttf.BaseName) (TrueType)"
        Set-ItemProperty -Path $regPath -Name $regName -Value $ttf.Name -Force
        $count++
    }
    
    # Cleanup
    Remove-Item -Path $font.Zip -Force
    Remove-Item -Path $font.Dir -Recurse -Force
    
    Write-Host "    完成: 安装 $count 个字体文件" -ForegroundColor Green
    Write-Host ""
}

Write-Host "=== 全部安装完成 ===" -ForegroundColor Green
Write-Host "请重启 Obsidian 使字体生效。" -ForegroundColor Yellow
Write-Host ""
Write-Host "字体安装位置: $FontDir" -ForegroundColor Gray
