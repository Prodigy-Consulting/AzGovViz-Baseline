
## Create

$objectId = '<objectId of the identity that shall run AzGovViz>'
$role = 'Reader'
$managementGroupId = '<managementGroupId>'

New-AzRoleAssignment `
    -ObjectId $objectId `
    -RoleDefinitionName $role `
    -Scope /providers/Microsoft.Management/managementGroups/$managementGroupId


## Run AzGovViz ##

# Connect to Azure tenant
$pscredential = Get-Credential
Connect-AzAccount -ServicePrincipal -TenantId 'b71d5652-4b83-4257-afcd-7fd177884564' -SubscriptionId '49d9457a-881f-410e-8602-972a2873ffa9' -Credential $pscredential

# Run AzGovViz
# Change directory to where AzGovVizParallel.ps1 is located, then run the following:
./AzGovVizParallel.ps1 -ManagementGroupId 'b71d5652-4b83-4257-afcd-7fd177884564' `
    -OutputPath 'C:\_Code\_Working\AzGovViz-Output-20230209' `
    -SubscriptionId4AzContext '49d9457a-881f-410e-8602-972a2873ffa9' `
    -DoPSRule `
    #-NoPIMEligibility