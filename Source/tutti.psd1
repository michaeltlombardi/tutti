@{
  # Script module or binary module file associated with this manifest.
  RootModule = 'tutti.psm1'

  # Version number of this module.
  ModuleVersion = '0.0.1'

  # ID used to uniquely identify this module
  GUID = 'dad3e5b8-f791-4420-9eda-90ee7a7dab01'

  # Author of this module
  Author = 'tutti team & community'

  # Copyright statement for this module
  Copyright = '(c) Michael T. Lombardi. All rights reserved.'

  # Description of the functionality provided by this module
  Description = 'A PowerShell Crescendo module for wrapping the GitHub CLI'

  # Minimum version of the PowerShell engine required by this module
  PowerShellVersion = '7.2'

  # Modules that must be imported into the global environment prior to importing this module
  # RequiredModules = @()

  # Assemblies that must be loaded prior to importing this module
  # RequiredAssemblies = @()

  # Script files (.ps1) that are run in the caller's environment prior to importing this module.
  # ScriptsToProcess = @()

  # Type files (.ps1xml) to be loaded when importing this module
  # TypesToProcess = @()

  # Format files (.ps1xml) to be loaded when importing this module
  # FormatsToProcess = @()

  # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
  # NestedModules = @()

  # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
  FunctionsToExport = @()

  # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
  CmdletsToExport = @()

  # Variables to export from this module
  VariablesToExport = '*'

  # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
  AliasesToExport = @()

  # List of all modules packaged with this module
  # ModuleList = @()

  # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
  PrivateData = @{

    PSData = @{

      # Tags applied to this module. These help with module discovery in online galleries.
      Tags = @(
        'Crescendo'
        'CrescendoBuilt'
        'GitHub'
        'gh'
        'cli'
        'Windows'
        'Linux'
        'MacOS'
      )

      # A URL to the license for this module.
      LicenseUri = 'https://github.com/michaeltlombardi/tutti/blob/main/LICENSE'

      # A URL to the main website for this project.
      ProjectUri = 'https://github.com/michaeltlombardi/tutti'

      # A URL to an icon representing this module.
      # IconUri = 'https//tutti.fyi/images/psgicon.png'

      # ReleaseNotes of this module
      # ReleaseNotes = ''
    } # End of PSData hashtable

  } # End of PrivateData hashtable

  # HelpInfo URI of this module
  # HelpInfoURI = 'https://tutti.fyi/help/updateable'

  # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
  # DefaultCommandPrefix = 'GH'
}

