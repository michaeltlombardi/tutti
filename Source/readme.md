# Source

The files and folders here contain the content that is pulled together for publishing to the
PowerShell Gallery. Information on the files and folders are included below.

- [`tutti.psd1`](#tuttipsd1)
- [`tutti.psm1`](#tuttipsm1)
- [`Private`](#Private)
- [`Public`](#Public)

## tutti.psd1

The PowerShell module manifest file. Contains the metadata for the module. This file is primarily
maintained by hand except for the `ReleaseNotes` key in `PrivateData.PSData`; the release notes are
always set during the release process to the appropriate changelog information.

## tutti.psm1

The root module file. During development, this file is used to enable easier development practices
by separating the classes, enums, and functions of this module into separate files and dot-sourcing
them in the root module.

During the build process for a release, the code that lands in the published module is relocated to
this file to enable code-signing and improve performance.

## Private

This folder contains the private classes, enums, and functions used by this module as well as their
unit tests.

During the build process for a release, the code in this folder (except for the tests) is placed
into the `Private` code region of the modified [`tutti.psm1`](#tuttipsm1) file.

For more information about the contents of this file, see [the folder's readme](Private/readme.md).

## Public

This folder contains the public classes, enums, and functions used by this module as well as their
unit tests.

During the build process for a release, the code in this folder (except for the tests) is placed
into the `Public` code region of the modified [`tutti.psm1`](#tuttipsm1) file.

For more information about the contents of this file, see [the folder's readme](Public/readme.md).
