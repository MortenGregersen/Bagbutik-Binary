// swift-tools-version:6.0

import PackageDescription

let releaseTag = "24.0.0-pre5"
let releaseBaseURL = "https://github.com/MortenGregersen/Bagbutik-Binary/releases/download/\(releaseTag)"

func binaryTarget(_ name: String, checksum: String) -> Target {
    .binaryTarget(
        name: name,
        url: "\(releaseBaseURL)/\(name).xcframework.zip",
        checksum: checksum
    )
}

let package = Package(
    name: "Bagbutik",
    platforms: [
        .macOS(.v12),
        .iOS(.v15),
        .tvOS(.v15),
        .watchOS(.v9),
        .visionOS(.v1),
    ],
    products: [
        .library(name: "BagbutikCore", targets: ["BagbutikCore"]),
        .library(name: "BagbutikAppStore", targets: [
            "BagbutikCore", "BagbutikModelsShared", "BagbutikAppStoreModels", "BagbutikAppStore",
            "BagbutikMarketplacesModels", "BagbutikProvisioningModels", "BagbutikTestFlightModels",
            "BagbutikXcodeCloudModels",
        ]),
        .library(name: "BagbutikGameCenter", targets: [
            "BagbutikCore", "BagbutikModelsShared", "BagbutikAppStoreModels", "BagbutikGameCenterModels",
            "BagbutikGameCenter", "BagbutikMarketplacesModels", "BagbutikProvisioningModels",
            "BagbutikTestFlightModels", "BagbutikXcodeCloudModels",
        ]),
        .library(name: "BagbutikMarketplaces", targets: [
            "BagbutikCore", "BagbutikModelsShared", "BagbutikMarketplacesModels", "BagbutikMarketplaces",
        ]),
        .library(name: "BagbutikProvisioning", targets: [
            "BagbutikCore", "BagbutikModelsShared", "BagbutikProvisioningModels", "BagbutikProvisioning",
        ]),
        .library(name: "BagbutikReporting", targets: [
            "BagbutikCore", "BagbutikModelsShared", "BagbutikReportingModels", "BagbutikReporting",
        ]),
        .library(name: "BagbutikTestFlight", targets: [
            "BagbutikCore", "BagbutikModelsShared", "BagbutikTestFlightModels", "BagbutikTestFlight",
        ]),
        .library(name: "BagbutikUsers", targets: [
            "BagbutikCore", "BagbutikModelsShared", "BagbutikUsersModels", "BagbutikUsers",
        ]),
        .library(name: "BagbutikWebhooks", targets: [
            "BagbutikCore", "BagbutikModelsShared", "BagbutikWebhooksModels", "BagbutikWebhooks",
        ]),
        .library(name: "BagbutikXcodeCloud", targets: [
            "BagbutikCore", "BagbutikModelsShared", "BagbutikProvisioningModels", "BagbutikXcodeCloudModels",
            "BagbutikXcodeCloud",
        ]),
    ],
    targets: [
        binaryTarget("BagbutikCore", checksum: "195bb99f5ec541d4b2eb70154630a6c06e0f72eb903d18f546d7eb25bc7c2f44"),
        binaryTarget("BagbutikModelsShared", checksum: "cddbc03eec0b8653ded313428f4f48338af265089f463c70f0f47f2ce3d635f0"),
        binaryTarget("BagbutikAppStoreModels", checksum: "0415e9ba05fa12e5f0bc1bcb382d70aa99552dbbc3e12d87956b55d7bf84379a"),
        binaryTarget("BagbutikAppStore", checksum: "08ae17364fc10f8d439816251d7d9da5fb0739eab99afeb14d3448f708f3e129"),
        binaryTarget("BagbutikGameCenterModels", checksum: "4de3a5b93fae302ba1f5b6a14685ab56db46a357b5b42232acd1a52e918fbabe"),
        binaryTarget("BagbutikGameCenter", checksum: "6e72b82605e7e25f430c613eb153f0f73252f082a68a100064b6b167ad4ccc31"),
        binaryTarget("BagbutikMarketplacesModels", checksum: "e55ebeb22a6c56a7482a5013cf97c55cd910ac7d2b2e8da6ae009aa32648c22f"),
        binaryTarget("BagbutikMarketplaces", checksum: "3ae9b11bc83411c806bb37b9e75ffdb7da6eab8730097feb04fec13c425e6418"),
        binaryTarget("BagbutikProvisioningModels", checksum: "6b0a12e7f27c372d64bc7c61859ec72992ef4fbf3a92a9c3cde1fd426f080ae4"),
        binaryTarget("BagbutikProvisioning", checksum: "962f0787f5adbe37dbe8a37fa4036232cfc5bd7ee017b341984525f8f7ee14fd"),
        binaryTarget("BagbutikReportingModels", checksum: "cad8d71cf4d1efdc8b5574f39df7de73e9a6052d1be0b42cee05a26e2cd7d2e2"),
        binaryTarget("BagbutikReporting", checksum: "713193c1a1f2a7df9a6da54c90cdd4c7b02915c66e43ff38b55692ff57d361ea"),
        binaryTarget("BagbutikTestFlightModels", checksum: "104aa6e7113218e3c880b9553a412aaf32fd7602efa2215d13f323d345f7c8cd"),
        binaryTarget("BagbutikTestFlight", checksum: "627b40a5bfaac9c2fab7ab8c54c5d4cb6c3b65103f450bf4b5493cafd20f1492"),
        binaryTarget("BagbutikUsersModels", checksum: "4d356f97034b0b461aa50b384a05cb9f66d304af92a6dce1757022e9f52f872b"),
        binaryTarget("BagbutikUsers", checksum: "15b442875807c2f1d331400854dcdc6cad751b9b8a5c4aecb2a6f2fcdda1c970"),
        binaryTarget("BagbutikWebhooksModels", checksum: "1ff3461e6ef0b52dc6894fb6c74a99cf30c2e42330a7340133ea6b41f6973880"),
        binaryTarget("BagbutikWebhooks", checksum: "ff8aa870fc37ceae94fd7ae4c05460790f0c170212120dfa19aeece480e10c3c"),
        binaryTarget("BagbutikXcodeCloudModels", checksum: "6c42c67fbea62162f056603fe8e03e9d2cd304eb4fde544400a581f64aa05410"),
        binaryTarget("BagbutikXcodeCloud", checksum: "12cabfffde07eda6d16614d6543ef20a0275e17af4ef5f8174283eeef4345224"),
    ]
)
