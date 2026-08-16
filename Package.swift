// swift-tools-version:6.0

import PackageDescription

let releaseTag = "24.0.0"
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
        binaryTarget("BagbutikCore", checksum: "aff924be3b05b06c1ce0afff5d7f1a916860ae4b27c56255580eccebfa43a6c3"),
        binaryTarget("BagbutikModelsShared", checksum: "2ee796906f5cfc03952bc4ca6d1f196c042b9ca8e83acbc02e5affecb1b46c73"),
        binaryTarget("BagbutikAppStoreModels", checksum: "df2b680efd30e7c19e6d79d52b10ee84a45c36ec0cf810ff9929a57c7da68e07"),
        binaryTarget("BagbutikAppStore", checksum: "9ae27de7a867a2b558e076dfd2bfe05cb31f30d8ce7d9133496ba8dbcf601197"),
        binaryTarget("BagbutikGameCenterModels", checksum: "266f626097b0452f92cb8aec963039611cd2d5ff905e5b6cbec581febd68a035"),
        binaryTarget("BagbutikGameCenter", checksum: "71c91a8b3c9474274f51209d40f14c73c227f47eeba08bd34a57c690749bafc4"),
        binaryTarget("BagbutikMarketplacesModels", checksum: "86a8f8a1b4f62c87abbcc06b2da2a80a6bec49e566d61d6efcd5d668f6fdbf6c"),
        binaryTarget("BagbutikMarketplaces", checksum: "7c8f5f3fa4a2464d4e642de1316b0b713079608b1832d8a0522d2e4a6c7181f8"),
        binaryTarget("BagbutikProvisioningModels", checksum: "286f38806975340c8f76262d95c10f4163bca928e48093ebcc1502bae26c741e"),
        binaryTarget("BagbutikProvisioning", checksum: "0f1aef50f5bffefd7fa72069dd5865d70e5d5bda5add26fe595a5b08eccc6730"),
        binaryTarget("BagbutikReportingModels", checksum: "3d04e2ae7da0bd4eb673e6c9d1617eff6b6df90ec1ed60d0f88e29a7e79bbbd8"),
        binaryTarget("BagbutikReporting", checksum: "c33da367cbdc5f084ad16f9ac697eba5cef7409fda4e7f91a95c65e7e52a47b1"),
        binaryTarget("BagbutikTestFlightModels", checksum: "1c941c7d12e11e6132b82eab381635c7f3099a2ae457b50a2a9928afe1c5c207"),
        binaryTarget("BagbutikTestFlight", checksum: "e30ac2c8ca0f1de13c147f8a896a2963ffe393f7264bd4ce1b9b921f7172bef0"),
        binaryTarget("BagbutikUsersModels", checksum: "7051e0978156b163d2e379506861d9d5d25d0d4c967ca7f97c5edc46353cca8c"),
        binaryTarget("BagbutikUsers", checksum: "60534d86faadace9896b5ae7a1511a2f1aa39995efcf7868d50b7a069c306c72"),
        binaryTarget("BagbutikWebhooksModels", checksum: "6144b1d4f236e1ebba896a3ae06b602ca03312713639589f45cf4302d6af8868"),
        binaryTarget("BagbutikWebhooks", checksum: "fcd0f25f3c21de884b1cab96175c28d9aee1abf8db315f59feefe0954dcc89ab"),
        binaryTarget("BagbutikXcodeCloudModels", checksum: "05967680ab6411851b96e1ae444d17a4f6a3a6b0fc321c50f5216fed9c204f0b"),
        binaryTarget("BagbutikXcodeCloud", checksum: "5442c6709c1485e71198a2307f1c12722d138beba153e6e0ec8bbab6969c3ccb"),
    ]
)
