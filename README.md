# premiere-pr

Petit module PowerShell d'utilitaires de texte, créé pour s'entraîner aux pull requests.

## Fonctions

- `Get-WordCount` : compte le nombre de mots dans un texte.
- `ConvertTo-Slug` : transforme un texte en identifiant pour URL (« Bonjour le Monde » → `bonjour-le-monde`).

## Lancer les tests

```powershell
Invoke-Pester
```

Les tests utilisent [Pester](https://pester.dev), qui est installé par défaut avec Windows PowerShell.
