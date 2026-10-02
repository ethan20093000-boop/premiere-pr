function Get-WordCount {
    param([string]$Text)
    if ([string]::IsNullOrWhiteSpace($Text)) { return 0 }
    return ($Text.Trim() -split '\s+').Count
}

function ConvertTo-Slug {
    param([string]$Text)
    $slug = $Text.ToLowerInvariant().Trim()
    $slug = $slug -replace '[^a-z0-9]+', '-'
    return $slug.Trim('-')
}

Export-ModuleMember -Function Get-WordCount, ConvertTo-Slug
