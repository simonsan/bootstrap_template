Add-Type -AssemblyName System.Web.Extensions
$JS = New-Object System.Web.Script.Serialization.JavaScriptSerializer

$json = Get-Content '.\repo-labels.json' | Out-String | ConvertFrom-Json

# Remove all initial issue labels from repository
# gh label list --sort name -R 

# if this errors, remove the '' around /repos/.../labels/' 
foreach ($record in $json) {
    gh api --method POST -H "Accept: application/vnd.github+json" -H "X-GitHub-Api-Version: 2022-11-28" '/repos/{{github_org}}/TODO/labels' -f name=$($record.name) -f description=$($record.description) -f color=$($record.color)
}