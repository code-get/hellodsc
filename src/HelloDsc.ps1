param(
    [Parameter(Mandatory=$true)]
    $ConfigData,
    [Parameter(Mandatory=$false)]
    $OutputPath = [IO.Path]::Combine($PSScriptRoot, "../build/HelloDSC")
)

Configuration HelloDSC {
    param()
    Import-DscResource -ModuleName PSDesiredStateConfiguration;

    Node $AllNodes.NodeName {
        Log "MyLog" {
            Message = "Hello, DSC!"
        }
    }
}

HelloDsc -OutputPath $OutputPath -ConfigurationData $ConfigData