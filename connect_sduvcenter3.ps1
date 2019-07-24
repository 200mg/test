$vcName = "sduvcenter3.websense.com"

try

{

Get-VICredentialStoreItem -Host $vcName -ErrorAction Stop | Out-Null

Connect-VIServer -Server $vcName

}

catch

{
 Write-Host "No entry for $vcName found in the credentialstore" -ForegroundColor Cyan
}
