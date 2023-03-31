$path = "$env:ALLUSERSPROFILE\NVIDIA Corporation\Downloader"

# This is the regex I use to look for old driver folders. The folder name MUST have at least 2 numbers in it as well as any number of hexadecimal digits.
$filter = [regex] "^[0-9a-f]*\d[0-9a-f]*\d[0-9a-f]*(_extracted)?_?$"

echo "Cleaning up Nvidia's garbage..."

echo ""
echo "  - Looking for old driver installers to delete..."
Get-ChildItem -Path $path |
    Where-Object -Property Name -match $filter |
    Group-Object -Property Name |
    ForEach-Object {
        echo  "  - Deleting [$path\$($_.Group.Name)]..."
        Remove-Item "$path\$($_.Group.Name)" -Recurse
    }
echo ""

echo "  - Deleting $path\status.json..."
Remove-Item "$path\status.json"

echo "  - Creating empty $path\status.json..."
'[]' > "$path\status.json"

echo ""

echo "Done!"

echo ""

pause
