function invoke-UdfPipeProcess([Parameter(ValueFromPipeline=$true)]$myPipe="default")
{
    begin {
        Write-Host "Nu startar vi..."
    }
    process {

        Write-Host "Nu bearbetar vi : $($myPipe.PSParentPath)"
    }
    end
    {
        Write-Host "Nu avslutar vi."
    }
}


#In second try
Set-Location ($env:HOMEDRIVE + $env:HOMEPATH + "\Documents\")
Get-ChildItem | Invoke-UdfPipeProcess
