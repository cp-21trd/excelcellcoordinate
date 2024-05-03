task Test {
    $Tests = 'cp-21trdExcelCellCoordinate.psm1'

    Import-Module PSScriptAnalyzer
    Invoke-ScriptAnalyzer .\cp-21trdExcelCellCoordinate.psm1

    # Import-Module Pester
    # Invoke-Pester .\cp-21trdExcelCellCoordinate.test.ps1
}

task Release {
    Set-PsEnv
    $valTest = $env:PSGALLERY_API_KEY
    Write-Output( $valTest)
    Publish-PSResource -Path .\cp-21trdExcelCellCoordinate.psd1 -Repository PSGallery -ApiKey $valTest
}

task . Test, Release