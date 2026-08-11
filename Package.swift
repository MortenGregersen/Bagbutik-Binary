// swift-tools-version:6.0

import PackageDescription

let releaseTag = "24.0.0-pre3"
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
        binaryTarget("BagbutikCore", checksum: "91bedd768c52d9845159ae9723ce806b2677338cc507ac63c93a85a8e9eafc03"),
        binaryTarget("BagbutikModelsShared", checksum: "4dfededf0e41aa9087fbbebabb8db676e51b19077c096ca3843e94e06b649ef7"),
        binaryTarget("BagbutikAppStoreModels", checksum: "ddab75e67375f95496f8c28921b56aba7faebc62bebc4f8680837b4d72cee131"),
        binaryTarget("BagbutikAppStore", checksum: "66a63943d22b79360bd2590a22f21cdbee7d64b3fe88c9cb116286be508dba52"),
        binaryTarget("BagbutikGameCenterModels", checksum: "ba5de6d0c9d15fb0c51bdb25be477793ce7dfdafefd7934101897a3025022e8d"),
        binaryTarget("BagbutikGameCenter", checksum: "d35cd36a4a7d9ddf9c0b64f2c829734c7880af3cf3b081668b9603f43f6fe4ee"),
        binaryTarget("BagbutikMarketplacesModels", checksum: "481356ad9813d5c6cb6c3cda29386dca62e487e6df29172887c324fd38595fbf"),
        binaryTarget("BagbutikMarketplaces", checksum: "c9c2e3f8d3a289ab8e01c09c97382832bde23a08807c9b62a1901bc50ff9e56e"),
        binaryTarget("BagbutikProvisioningModels", checksum: "66639be79485e077cb82d7eb8e48e37bf53a052ccf7dffdfdb025724c35568e7"),
        binaryTarget("BagbutikProvisioning", checksum: "7a903ff402c3f418fc109d3d28678b6fbf5474968b453b4c901e762b595989a7"),
        binaryTarget("BagbutikReportingModels", checksum: "fd72269388d7a0e29f1499845ef03487c71ef6d2a87fbc5b44b7c484133d9d4c"),
        binaryTarget("BagbutikReporting", checksum: "ba6282239ab29d4520500dd6fbf92a7ddb5aa2d19e6d8d3a65a920d35be6312b"),
        binaryTarget("BagbutikTestFlightModels", checksum: "79ed604a8ef5ec56f2c2658aacffab8e9613c3fd5824ccd698f5de447247eaa0"),
        binaryTarget("BagbutikTestFlight", checksum: "0cd8533a080b1a0c399ed7f411b692528b619228b9ea23af5717d75cdf78b2aa"),
        binaryTarget("BagbutikUsersModels", checksum: "0b26e6c5f417218ccc201271dc049f55ad41e8676e3111bdd9d27bdb9b1d990b"),
        binaryTarget("BagbutikUsers", checksum: "e7ed884762e4533879d3c4117b7b42be29856fbbc854273e721e517d693c7af9"),
        binaryTarget("BagbutikWebhooksModels", checksum: "a68cbe96e22abbb4dbbd63d0afb3b3263f8e746c695cfea1d94e80a9890e108c"),
        binaryTarget("BagbutikWebhooks", checksum: "34f1422c5788d421e3cde959c42fe08f2f24b555dcdd2844d057040d6df954f6"),
        binaryTarget("BagbutikXcodeCloudModels", checksum: "0ce330daccd08559065183dbd5234e3315aa498472bcad052067f7cd0b6e8f64"),
        binaryTarget("BagbutikXcodeCloud", checksum: "369edd045c5206bd472a1bef7321886e5f7f7e1089fc9c8a181cd2b376648e87"),
    ]
)
