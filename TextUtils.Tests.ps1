Import-Module "$PSScriptRoot\TextUtils.psm1" -Force

Describe 'Get-WordCount' {
    It 'compte les mots separes par des espaces' {
        Get-WordCount 'un deux trois' | Should Be 3
    }

    It 'renvoie 0 pour un texte vide' {
        Get-WordCount '' | Should Be 0
    }
}
