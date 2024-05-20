if (-not (Test-Path -Path ".\old")) {
    New-Item -ItemType Directory -Path ".\old"
}

$jpgFiles = Get-ChildItem -Path . -Filter *.jpg

foreach ($file in $jpgFiles) {
    $oldFilePath = $file.FullName
    $newFilePath = Join-Path -Path ".\old" -ChildPath $file.Name

    Move-Item -Path $oldFilePath -Destination $newFilePath

    $date = if ($file.CreationTime) { $file.CreationTime } else { Get-Date }

    $dateString = $date.ToString("yyyy-MM-dd")

    $caption = "Дата: $dateString"

    & "magick" convert $newFilePath -gravity South -pointsize 36 -fill red -annotate +0+5 $caption $oldFilePath
}
