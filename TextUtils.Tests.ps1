Import-Module "$PSScriptRoot\TextUtils.psm1" -Force

Describe 'Get-WordCount' {
    It 'compte les mots separes par des espaces' {
        Get-WordCount 'un deux trois' | Should Be 3
    }

    It 'renvoie 0 pour un texte vide' {
        Get-WordCount '' | Should Be 0
    }
}

Describe 'ConvertTo-Slug' {
    It 'met en minuscules et remplace les espaces par des tirets' {
        ConvertTo-Slug 'Bonjour le Monde' | Should Be 'bonjour-le-monde'
    }

    It 'retire la ponctuation et les tirets en trop aux extremites' {
        ConvertTo-Slug '  Hello, World!  ' | Should Be 'hello-world'
    }
}
