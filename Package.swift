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
        binaryTarget("BagbutikCore", checksum: "0d3bd6f0ba24d35e3d3d8b6c6a7182f1510ec635ba0b5a6ffc7a35b2a5631417"),
        binaryTarget("BagbutikModelsShared", checksum: "3075295960bdfabad5a4a60b199e4fdf37eb4bd247feaa00dffae6056c56d5a7"),
        binaryTarget("BagbutikAppStoreModels", checksum: "1e1bad8102bf91f665fb5dc827720df734a067fc22876e3def52a5f022adda8b"),
        binaryTarget("BagbutikAppStore", checksum: "080aa729d56c41b3a466a6b5f1f6bd99ed30325a7a3250fc966813e1e8732c5b"),
        binaryTarget("BagbutikGameCenterModels", checksum: "f9789f5def2e69df903aaccf7e5ea984a00f9f6e54087175ccb038e40984848c"),
        binaryTarget("BagbutikGameCenter", checksum: "f0f349bd9c23aa98008c79c880bb16d073d67394a982140c137d8e8c31cc870b"),
        binaryTarget("BagbutikMarketplacesModels", checksum: "3c955106049a82d843611a02bc7a58bd1b1494d8119fe76dabe1d40d5b093145"),
        binaryTarget("BagbutikMarketplaces", checksum: "f14e4170670f21be8c5b4c41f89398eeb1f68aa8ca022f547ea0003b5abbe8a5"),
        binaryTarget("BagbutikProvisioningModels", checksum: "3ddab99d274eab426111b66155f4433d7ff7b4a9b366b7d6506aa2d15762ea1c"),
        binaryTarget("BagbutikProvisioning", checksum: "bf8c15c8e41290264146ad91331132141edcf03605ab4853c84389dbad6e2211"),
        binaryTarget("BagbutikReportingModels", checksum: "f764b9e71a1b2ed27786b4ec80d285edf137b48f4240859897986548e72894b6"),
        binaryTarget("BagbutikReporting", checksum: "cf3cc7098cb0cc34bd314bdee89d12f46a969e0919457189cee1207ac94a0e43"),
        binaryTarget("BagbutikTestFlightModels", checksum: "b61a4fdc5b5b600a4b91190056323c094a4dde52def40cb02fee5fd22fff4bd4"),
        binaryTarget("BagbutikTestFlight", checksum: "583ef4ea58cc320a249ebe361481d60b590a047891b329daae8b48f3924ab57a"),
        binaryTarget("BagbutikUsersModels", checksum: "284a4ca2706faa973ffb1b6ccf8a929020e5f7ded1921571c29ca4e85138d362"),
        binaryTarget("BagbutikUsers", checksum: "639764b1a74ea5957653ef7bc4e4e86891c328e0f6864bbbebcd4b7c375271b7"),
        binaryTarget("BagbutikWebhooksModels", checksum: "a3e4b127985a075d0e344c58aa437bc0236e13534f931a22b075c33da6bd10f9"),
        binaryTarget("BagbutikWebhooks", checksum: "b2919d86d268e21b7aca1eb9893d17d16389ee91f7fbcf7d2debb2eed491b9fe"),
        binaryTarget("BagbutikXcodeCloudModels", checksum: "a3dac0d498f8b6ead77247fb0d0672232f4f6d47e6e7c0ccdd836e79d9cb094c"),
        binaryTarget("BagbutikXcodeCloud", checksum: "fec4db9a154dbe1816a48d496ba7894bfba8a55819d39608f375d0a0f5424aae"),
    ]
)
