# Public Source

This folder contains the public classes, enums, and functions used by this module as well as their
unit tests.

During the build process for a release, the code in this folder (except for the tests) is placed
into the `public` code region of the modified [`tutti.psm1`](../readme.md#tuttipsm1) file.

- [Classes]
- [Enums]
- [Functions]
  - [ArgumentCompletion]
  - [Intermediary]
  - [General]

## Classes

This folder contains the public classes used by this module and their unit tests. During the build
process, these classes are also included in the dynamically generated `Load.ps1` file, which enables
automatic import of the public classes into the caller's session for direct use.

The [`LoadOrder.jsonc`](Classes/LoadOrder.jsonc) file determines the order the classes should be
loaded in during the build and test processes; this is critical to ensure nothing breaks.

<!--
When one or more classes are added, this comment should be replaced with a list of the current
classes with a synopsis and any important notes for maintainers. For example:
- [`Foo`](Classes/Foo.ps1): Used to represent the foo datatype for processing.
  - Currently experimental and unstable, excluded from the build process.
-->

## Enums

This folder contains the public enums used by this module and their unit tests. During the build
process, these enums are also included in the dynamically generated `Load.ps1` file, which enables
automatic import of the public enums into the caller's session for direct use.

The [`LoadOrder.jsonc`](Enums/LoadOrder.jsonc) file determines the order the enums should be loaded
in during the build and test processes; this is critical to ensure nothing breaks.

<!--
When one or more enums are added, this comment should be replaced with a list of the current enums
with a synopsis and any important notes for maintainers. For example:
- [`Bar`](Enums/Bar.ps1): Used for the known-valid values for the Bar property of the Foo datatype.
  - Needs to be updated periodically as the upstream datatype is modified.
-->

## Functions

This folder contains the public functions used by this module and their unit tests. The public
functions are broken down into a few groups: `Completion`, `General`, and `Intermediary`.

### Completion

This folder contains functions for registering argument completers so users do not need to assemble
their own scriptblocks and call `Register-ArgumentCompleter`.

<!--
When one or more functions are added, this comment should be replaced with a list of the current
functions with a synopsis and any important notes for maintainers. For example:
- [`Register-FooCompleter`](Functions/Completion/Register-FooCompleter.ps1): Used to improve the
  UX when users are calling a function that utilizes Foo datatypes.
  - Currently experimental and unstable, excluded from the build process.
-->

### Configuration

This folder contains functions for interacting with this module's configuration state. Unless there
is a good reason, they should always come in a trio: `Get`, `Set`, and `Remove`.

<!--
When one or more functions are added, this comment should be replaced with a list of the current
functions with a synopsis and any important notes for maintainers. For example:
- `Foo`: Used to [get][Get-Foo], [set][Set-Foo], and [remove][Remove-Foo] the Foo setting from the
  configuration context.
  - Currently experimental and unstable, excluded from the build process.
-->

### General

This folder contains functions which do not fit into another category. These functions are "normal"
PowerShell functions you might find in any other module. These functions may rely on
Crescendo-generated functions defined in [the `Intermediary` folder](#intermediary).

<!--
When one or more functions are added, this comment should be replaced with a list of the current
functions with a synopsis and any important notes for maintainers. For example:
- [`Test-GitHubToken`](Functions/General/Test-GitHubToken.ps1): Used to validate a github token.
  - Makes live calls to GitHub; be mindful when testing.
-->

### Intermediary

This folder contains the intermediary definitions for Crescendo-generated functions that wrap the
`gh` command-line tool. Unlike the other function definitions, these are not fully functional from
source and must be transformed during the build/test process.

<!--
When one or more functions are added, this comment should be replaced with a list of the current
functions with a synopsis and any important notes for maintainers. For example:
- [`Get-Issue`](Functions/Intermediary/Get-Issue.ps1): Used to retrieve one or more issues.
-->