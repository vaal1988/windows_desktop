Get-AppxProvisionedPackage -Online | Where { `
$_.DisplayName -NotMatch 'Microsoft.StorePurchaseApp' -and `
$_.DisplayName -NotMatch 'Microsoft.WindowsStore' -and `
$_.DisplayName -NotMatch 'Microsoft.WindowsCalculator' -and`
$_.DisplayName -NotMatch 'Microsoft.Windows.Photos' `
} | Remove-AppxProvisionedPackage -Online

Get-AppxPackage -AllUsers | Where-Object { `
$_.IsFramework -Match 'False' -and `
$_.NonRemovable -Match 'False' -and `
$_.Name -NotMatch 'Microsoft.StorePurchaseApp' -and `
$_.Name -NotMatch 'Microsoft.WindowsStore' -and `
$_.Name -NotMatch 'Microsoft.Windows.Photos' -and `
$_.Name -NotMatch 'Microsoft.WindowsCalculator' `
} | Remove-AppxPackage -AllUsers

