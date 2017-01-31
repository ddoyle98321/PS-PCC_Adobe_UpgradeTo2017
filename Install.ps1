$CN = "W7EW00001PCC02"
$APV = Get-WmiObject -ComputerName $CN -Namespace "root\cimv2\sms" -Query "SELECT * FROM SMS_InstalledSoftware" | Where-Object ARPDisplayName -Like "Adobe Photoshop*" | Select-Object -ExpandProperty ProductVersion
$APV = $APV.ToString().Substring(0,2)
If ($APV -eq "18")
    { 
    Write-host "$APV It worked!!!"
    }
    Else
    {
    write-host "$APV Nope. Chuck Testa"
    }