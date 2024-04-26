function Invoke-ExcelCellCoordinate([string] $intput) {
    $match = ApplicateRegex($intput)

    $column = $match.Groups["Column"].Value
    $row = $match.Groups["Row"].Value

    $charArray = ReverseArray($column)

    $finalVal = CharArrayToAscii($charArray)

    Write-Output "X: $finalVal      Y: $row"
}
function ApplicateRegex([string] $intput) {
    $intput = $intput.ToUpper()
    $pattern = [regex]"(?<Column>[A-Z]+)(?<Row>[0-9]+)"
    $match = $pattern.Match($intput)
    return $match
}
function ReverseArray([string]$column) {
    $charArray = $column.ToCharArray()
    [array]::Reverse($charArray)
    return $charArray
}

function CharArrayToAscii([array]$charArray) {
    foreach ($char in $charArray) {
        $ascii = ([int][char]$char) - 64
        $finalVal += $ascii * [Math]::Pow(26, $pow)
        $pow++
    }
    return $finalVal
}