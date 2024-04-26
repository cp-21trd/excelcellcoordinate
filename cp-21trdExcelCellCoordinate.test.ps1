Describe 'ApplicateRegex' {
    It 'Given d3, it D' {
        $finalVal | Should -Be "D"
    }
}

BeforeAll {
    function ApplicateRegex ([string]$intput = 'd3') {
        @{$finalVal = 'D' }
        Where-Object { $_.Name -like $finalVal }
    }
}


Describe "CharArryToAscii" {
    Context "When the function is Called" {
        BeforeEach {
            Mock CharArrayToAscii { return [string] }
            Mock CharArrayToAscii { return [array[char]] }
            Mock CharArrayToAscii {} -Verifiable -ParameterFilter { $finalVal -eq [array] }
        }
    }
}