// swift-tools-version:6.0

import PackageDescription

let releaseTag = "24.0.3"
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
        binaryTarget("BagbutikCore", checksum: "a8dea19741029360a806d2e1e5e33f17fcba97906528c4f1b6fc52e396297584"),
        binaryTarget("BagbutikModelsShared", checksum: "43ab50a9270f2586048ac81764c8e20cd6e4fe66e3cd28dbe03cbd3220f4bf90"),
        binaryTarget("BagbutikAppStoreModels", checksum: "39997ff7cc47698f850d597aba070d76845a1359ddd60e4db03b671e7eea31e4"),
        binaryTarget("BagbutikAppStore", checksum: "f7e182dbf62f0b638b0961da8854a09d4241e564385e3d131881a7c94f830413"),
        binaryTarget("BagbutikGameCenterModels", checksum: "59111f65372c979489494477890027b3961ab2cda0215c2695c1b7f220f1fc35"),
        binaryTarget("BagbutikGameCenter", checksum: "434efff195bed88023b9637e7a9665aad361549408e69cb18339de56e9668f97"),
        binaryTarget("BagbutikMarketplacesModels", checksum: "6d9e04c678fb427b80643b2f3871c5472228f88e0128170d6f3d2f5f12b47529"),
        binaryTarget("BagbutikMarketplaces", checksum: "8db9076828c05dd1434dd2ad5f95b9fcf4a5f7d4c076f440e0c3b0318973b8b4"),
        binaryTarget("BagbutikProvisioningModels", checksum: "8c4053459fb49d6038bfddbc314acf407ae578c24bfbae9c611cee313cae4d9f"),
        binaryTarget("BagbutikProvisioning", checksum: "f0a8795f67ac76013b3439d589e233b27b57937cbdb99f2d5d0a24f3f2a7d444"),
        binaryTarget("BagbutikReportingModels", checksum: "5673ffff50ac9ff0c470af52d5dfa976258d979aa514e210aed49275437871df"),
        binaryTarget("BagbutikReporting", checksum: "8488826334ef61cd9b86f12fbda57777d11b6f8f10d26cb3f9f02e75dda8812d"),
        binaryTarget("BagbutikTestFlightModels", checksum: "28230135c99e8835116402ae095644701534f93c9e4db924cfad4ee8e695c847"),
        binaryTarget("BagbutikTestFlight", checksum: "c7f253c85b36ee1668e73a03fb6754ef91745ef83b392cfa05ec51b3d72f8204"),
        binaryTarget("BagbutikUsersModels", checksum: "9e492c907f9d78452e85e5567332ac4a84587861c113d958aa6dcb81d0eb9a0f"),
        binaryTarget("BagbutikUsers", checksum: "c2eae65d7223ca8a8d3ff90abf497e03b7f5572b0c8c6e35ef5db4ad73982e5d"),
        binaryTarget("BagbutikWebhooksModels", checksum: "b56af6a8901192e0d55af3d75d1581d535e066240815c3e70f01c11435beb4e9"),
        binaryTarget("BagbutikWebhooks", checksum: "5551487482f37572cb6f0a8ed1c62af31491b6de67307dd0f933f417bdf6728e"),
        binaryTarget("BagbutikXcodeCloudModels", checksum: "ae1d7ce8bbb46bd189459cb4b6f3c9029ed80b7dd7bb8c4f53c77c95ff0d8ce5"),
        binaryTarget("BagbutikXcodeCloud", checksum: "27ebe9246fb013c4bb47e69666044afe1188a9e913e931fd65312c2246ab0209"),
    ]
)
