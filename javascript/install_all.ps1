Get-ChildItem -Directory | ForEach-Object {
  if (Test-Path "$($_.FullName)\package.json") {
    Write-Host "Instalando dependências em $($_.FullName)"
    Push-Location $_.FullName
    npm install
    Pop-Location
  }
}