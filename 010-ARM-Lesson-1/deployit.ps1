
Enable-AzureRMAlias #Включить режим совместимости алиасов с Rm

Connect-AzAccount
Save-AzContext -Path $env:OneDriveCommercial\Технологии\Azure\_Profiles\msprofile.json
Import-AzContext -Path $env:OneDriveCommercial\Технологии\Azure\_Profiles\msprofile.json

$templateURI = "https://raw.githubusercontent.com/sergeyperus/azure-quickstart-templates/master/010-ARM-Lesson-1/azuredeploy.json"
New-AzResourceGroupDeployment  `
    -Name addstorage `
    -ResourceGroupName "ARM-Lessons"  `
    -TemplateURI $templateURI

    get-help Connect-AzAccount -Examples
    
    Connect-AzAccount -ServicePrincipal -ApplicationId f53bdcbb-3407-48c5-8950-f21ab84242db -Tenant 72f988bf-86f1-41af-91ab-2d7cd011db47
    
    Connect-AzAccount -Credential $Credential -Tenant 72f988bf-86f1-41af-91ab-2d7cd011db47 -ServicePrincipal
