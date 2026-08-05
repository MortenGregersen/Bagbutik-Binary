# Bagbutik Binary

This package distributes Bagbutik's prebuilt static XCFramework modules. It is
the binary counterpart to the source package at
https://github.com/MortenGregersen/Bagbutik.

The package exposes the same modular products and module names as the source
package. Select only the product your target uses, such as `BagbutikUsers` or
`BagbutikAppStore`. The source only `Bagbutik` umbrella product is intentionally
not included here.

Version 24 requires Xcode 16 or newer and supports macOS 12, iOS 15, tvOS 15,
watchOS 9, and visionOS 1 or newer. The binary release contains static
XCFrameworks for each generated module, including device and simulator
variants where Apple provides them.

Binary archives are release assets and are not committed to this repository.
The package manifest is updated with the checksums generated for each matching
release.
