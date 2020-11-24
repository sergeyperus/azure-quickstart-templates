Enable-AzureRMAlias #Включить режим совместимости алиасов с Rm
Import-AzContext -Path $env:OneDriveCommercial\Технологии\Azure\_Profiles\msprofile.json

$templateURI = "https://raw.githubusercontent.com/sergeyperus/azure-quickstart-templates/master/010-ARM-Lesson-1/azuredeploy.json"
New-AzResourceGroupDeployment  `
    -Name blanktemplate `
    -ResourceGroupName "ARM-Lessons"  `
    -TemplateURI $templateURI
