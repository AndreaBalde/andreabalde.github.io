# Chiede il messaggio di commit
$commitMessage = Read-Host "Inserisci il messaggio per il commit"

# 1. Genera la build Flutter web
Write-Host ">> Generazione build Flutter web..."
flutter build web

# 2. Cancella il contenuto della cartella docs
Write-Host ">> Pulizia cartella docs..."
if (Test-Path "./docs") {
    Remove-Item "./docs/*" -Recurse -Force
} else {
    New-Item -ItemType Directory -Path "./docs" | Out-Null
}

# 3. Copia il contenuto della build nella cartella docs
Write-Host ">> Copia build in docs..."
Copy-Item "./build/web/*" "./docs" -Recurse -Force

# 4. Aggiungi, committa e push
Write-Host ">> Eseguo git add, commit e push..."
git add .
git commit -m "$commitMessage"
git push

Write-Host ">> Deploy completato!"