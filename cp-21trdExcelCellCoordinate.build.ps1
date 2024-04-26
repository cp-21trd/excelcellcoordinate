task Test {
    $Tests = 'cp-21trdExcelCellCoordinate.psm1'

    Import-Module PSScriptAnalyzer
    Invoke-ScriptAnalyzer .\cp-21trdExcelCellCoordinate.psm1

    # Import-Module Pester
    # Invoke-Pester .\cp-21trdExcelCellCoordinate.test.ps1
}
task Release {
    Set-PsEnv
    Publish-PSResource -Path .\cp-21trdExcelCellCoordinate.psd1 -Repository PSGallery -ApiKey $env:PSGALLERY_API_KEY
}

task . Test