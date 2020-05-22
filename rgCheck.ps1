$rgName=$args[0]

Get-AzureRmResourceGroup -Name $rgName -ev notPresent -ea 0  | Out-Null

if ($notPresent)
{
    Write-Output "'$rgName' does not exist"
}
else 
{
    Remove-AzResourceGroup -Name $rgName
}
