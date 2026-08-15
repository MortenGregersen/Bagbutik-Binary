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
        binaryTarget("BagbutikCore", checksum: "88373966ce05a3982531959d8366f6c0cd2b5dde9623d2165d00d033c4a6f1ec"),
        binaryTarget("BagbutikModelsShared", checksum: "ba7196e6d9106f748a0e94a42c8c16316cf4826c1e30a91f93e9471b9ce9d914"),
        binaryTarget("BagbutikAppStoreModels", checksum: "9936681cf8c0b1024e70a5d9bbae6446f96c90793c8f6a84d431993c4532746d"),
        binaryTarget("BagbutikAppStore", checksum: "7e83a77098845d33b97793863fe5171587b349cd8a845ed3d3ae8c8610027267"),
        binaryTarget("BagbutikGameCenterModels", checksum: "092598269a27e339cbb8f5862e0ee2f956f23c6790df08040942e3e7b1f5991c"),
        binaryTarget("BagbutikGameCenter", checksum: "81abf44b4435f4e61533df39f94f3e7824475018db9eddd7eaa51202840ba2ab"),
        binaryTarget("BagbutikMarketplacesModels", checksum: "5d60c96c35c9e724a89b505eaa23641067d165bc21c99b2b32b4edf19d64151a"),
        binaryTarget("BagbutikMarketplaces", checksum: "648b6f0bc531205777160fa98402fdf5a91328637742a472e6d237f48fe7ce5e"),
        binaryTarget("BagbutikProvisioningModels", checksum: "873de98e63a8980b3cc4d0e45e81cdbfa614e12ba520107f5fcf0ead9b787b22"),
        binaryTarget("BagbutikProvisioning", checksum: "4ceef77232b3c0c8f08ee904ebdb2f9944c0d8ea2ce24eebacc1173a5f12bb94"),
        binaryTarget("BagbutikReportingModels", checksum: "5fd7fd330124c067975505fddb0cdd68d44a622a1d18c3ff2d1cb51b808beaca"),
        binaryTarget("BagbutikReporting", checksum: "91bd6ae7c34d0b9a94d76fc1f8a24873643418401078933420bc8c86273c07ee"),
        binaryTarget("BagbutikTestFlightModels", checksum: "69c1fc05cbd6749b27cd123d278ae263cb2afd13a6453ffec1ea93f1c3c57fb4"),
        binaryTarget("BagbutikTestFlight", checksum: "1b73027e30869f164c8b216c7e4688a6332d90e44956905651a41cbeed37e400"),
        binaryTarget("BagbutikUsersModels", checksum: "eed077ede88a90a5f04ffc84a02f485314dace65bd2f20bbfbf94572af1bc7e3"),
        binaryTarget("BagbutikUsers", checksum: "2ae723881a989054825e8e5fdbb8de33663ee6b34c21feee717b7cdf4706212e"),
        binaryTarget("BagbutikWebhooksModels", checksum: "2957c76b77dd3baf12bb7aa161ee59fa758626d5cf152178f3128d5cb7635471"),
        binaryTarget("BagbutikWebhooks", checksum: "4f6a4ab4e68a82bcf739913d03ecaa10a19c3c27df060f6d2718234668b80bcc"),
        binaryTarget("BagbutikXcodeCloudModels", checksum: "dc276c2ebbcd24d4659e4df96b42d2e228e4b924aa8dbab8724bf2d51c2bfbeb"),
        binaryTarget("BagbutikXcodeCloud", checksum: "c18241c95be410e781c801862ac6ced5e38dd61d83e9891fa9d04130edf8d1f3"),
    ]
)
