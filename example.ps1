$UserToCheckfor = Read-Host "Please type in user ID for user to check"

$AdGroupsForUsers = (New-Object System.DirectoryServices.DirectorySearcher("(&(objectCategory=User)(samAccountName=$($UserToCheckfor)))")).FindOne().GetDirectoryEntry().memberOf

Write-Host "Checking" $UserToCheckfor 
foreach ($AdGroupsForUser in $AdGroupsForUsers) {
	
	foreach ($GroupToCheck in $GroupsToCheck) {
			Write-Host "Found  "  $GrouptoCheck
		
	}
}
