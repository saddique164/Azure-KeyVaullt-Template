{
$resourceGroupName = 'SantiaDemo'
$resourceGroupLocation = 'Southeast Asia'
$resoruceDeploymentName= "santiakeyvault"
$templatePath = $env:SystemDrive + '\' + 'santia\SantiaKeyvault'
$templateName= 'azuredeploy.json'
$template = $templatePath + '\' + $templateName
}


# Creating a new Resource Group

{
New-AzureRmResourceGroup `
  -Location $resourceGroupLocation `
  -Name $resourceGroupName `
  -verbose -Force
}

# Creation of Virtual Network

{
 New-AzureRmResourceGroupDeployment `
  -Name $resoruceDeploymentName `
  -ResourceGroupName $resourceGroupName `
  -TemplateFile $template `
  -verbose -Force

}


