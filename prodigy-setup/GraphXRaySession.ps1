

Import-Module Microsoft.Graph.Identity.DirectoryManagement

Get-MgOrganization -Property "tenantType" 

Import-Module Microsoft.Graph.Applications

$params = @{
	AppId = "88574cf8-5b89-4438-ae49-1d84a4dcadd6"
	Tags = @(
		"WindowsAzureActiveDirectoryIntegratedApp"
		"HideApp"
	)
}

New-MgServicePrincipal -BodyParameter $params

Import-Module Microsoft.Graph.Applications

Get-MgServicePrincipalAppRoleAssignment -ServicePrincipalId $servicePrincipalId -Top 999 

Import-Module Microsoft.Graph.Identity.SignIns

Get-MgOauth2PermissionGrant -Filter "clientId%20eq%20%2733bc28d0-24e0-4be8-86dd-b9e2c0b007c7%27%20and%20consentType%20eq%20%27AllPrincipals%27" -Top 999 

Import-Module Microsoft.Graph.Applications

Get-MgApplicationFederatedIdentityCredential -ApplicationId $applicationId

Import-Module Microsoft.Graph.Identity.SignIns

Get-MgPolicyDefaultAppManagementPolicy

Import-Module Microsoft.Graph.Applications

Get-MgApplicationAppManagementPolicy -ApplicationId $applicationId