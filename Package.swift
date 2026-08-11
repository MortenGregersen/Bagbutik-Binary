// swift-tools-version:6.0

import PackageDescription

let releaseTag = "24.0.0-pre4"
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
        binaryTarget("BagbutikCore", checksum: "4fabf68f655145b09738bc973a1bf4ee149395a1a2575d854f9ad6d251258445"),
        binaryTarget("BagbutikModelsShared", checksum: "9aaa0f4fc8cdea7821d6fc108450825cff1a4837625b2a46013d8ff906f8269f"),
        binaryTarget("BagbutikAppStoreModels", checksum: "8c4d5a74b624da292684f1c4ed8822610fda1a86c0f3d721fa384fde5e8ef242"),
        binaryTarget("BagbutikAppStore", checksum: "be5d917c73a68de5733886fc5699f47df4ecb4ceffaae3f4b6be2bd28c31eb65"),
        binaryTarget("BagbutikGameCenterModels", checksum: "2150bffde2dfb1c93091b69ab7d1a0af3569637a4afb4a1f0ac765845c46873d"),
        binaryTarget("BagbutikGameCenter", checksum: "b96bdc93f1f8e01e0e774dd91a4d68620a268b283296aabeba776b4fcd0d08aa"),
        binaryTarget("BagbutikMarketplacesModels", checksum: "842b7da704285d9202f7bf2ea4203a065f1423d6061d022d700306c04f778234"),
        binaryTarget("BagbutikMarketplaces", checksum: "c6bc27ea7f335b5e6ff527cf359a0495ca478f787a2acd481d388349b7bf7bc0"),
        binaryTarget("BagbutikProvisioningModels", checksum: "f2540e2ca4044c9f7a61fdc692d8d61446d861e85e9528d914a70d9aa73b4d53"),
        binaryTarget("BagbutikProvisioning", checksum: "98b4c7d3621a4be59105cbbf30282bfc8056de0befcbd0c86345b890d64fd423"),
        binaryTarget("BagbutikReportingModels", checksum: "e9950347ca4b651eb3084094d9f257313cc0962a6a64814e7546f4de57225c2e"),
        binaryTarget("BagbutikReporting", checksum: "f0477821a22578b9529255b60e268396e758fdcf62817289950c6ff3e95bb95a"),
        binaryTarget("BagbutikTestFlightModels", checksum: "3673179526d1634851f11798123b164f5a5927f70cf3c38864b3f961909ceb6c"),
        binaryTarget("BagbutikTestFlight", checksum: "22dc26586413bb17b55fa37637476b5f69c98c38e7cb44552ec3208cd0762d7a"),
        binaryTarget("BagbutikUsersModels", checksum: "9a9887b1567611b447f76d65a0bf83f9fdef00878d24a634f0d6118544f99f73"),
        binaryTarget("BagbutikUsers", checksum: "691ddfd9cd77f57cfb6b71de82c6c523da3a52cb8debbb4774fc68930ca6f455"),
        binaryTarget("BagbutikWebhooksModels", checksum: "6267d46e16ddfc3772294fdc4ae3f4ee7976dbb8604da5f6c294535f44ed343c"),
        binaryTarget("BagbutikWebhooks", checksum: "0dbe2fac99549695851426dd1f415d9316a9aa1cd868a31705024d1a817a540a"),
        binaryTarget("BagbutikXcodeCloudModels", checksum: "6cd19ac59751b24845ffdaaeb3529d6777636f3d3398d7e53831be61b3731934"),
        binaryTarget("BagbutikXcodeCloud", checksum: "7daeb88c9991e0c6511a82aa3c3ceaa437956d3dc2f6e399b3f96b3fbc7d302c"),
    ]
)
