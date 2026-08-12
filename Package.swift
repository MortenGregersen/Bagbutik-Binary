// swift-tools-version:6.0

import PackageDescription

let releaseTag = "24.0.0-pre6"
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
        binaryTarget("BagbutikCore", checksum: "c0c28f5a1fa3d2dc23fc538394f7cec73ff46c46527cfac916e3ec1a1dd3c566"),
        binaryTarget("BagbutikModelsShared", checksum: "56b64c294dee561181f9d84f55e5d0262f178dd8e08ce48e8fd1ed74390c8dc3"),
        binaryTarget("BagbutikAppStoreModels", checksum: "041c400ba55f415a897000d37524749df882cf73c591cf861b112e762ed68d17"),
        binaryTarget("BagbutikAppStore", checksum: "a1433adabecfa0190f646a17dcbf70f03c93132f4dd212242ca32335495566c0"),
        binaryTarget("BagbutikGameCenterModels", checksum: "595bd9b2e77d9de7ebe5df14cb1141c0499fc194da50011ec8627c67da05d1e0"),
        binaryTarget("BagbutikGameCenter", checksum: "aa16aeebd804d09654280c7b9828b209331e20a8476ef5118dfeaa6482c2aa7f"),
        binaryTarget("BagbutikMarketplacesModels", checksum: "40e558617eca5ca73dd9a53ea9c11ed54584a1af6819267fed8271570a5fc55f"),
        binaryTarget("BagbutikMarketplaces", checksum: "544804ebec777b8ad4186e272df823c4f498eec8f8790dc86a708c1200eef69f"),
        binaryTarget("BagbutikProvisioningModels", checksum: "d219afe2212419fcbd022c0423dc7259ee730028567bb21a01ccc29e34ef49e1"),
        binaryTarget("BagbutikProvisioning", checksum: "6827a85e4d8d3d7988903d0a5ce058f65cbe61f94f42da6ce61fc6a6de7e847f"),
        binaryTarget("BagbutikReportingModels", checksum: "91525a27d53b2d06b8ee028f92e2555ae34686103d67e5a9a3fc35769ab8ef9f"),
        binaryTarget("BagbutikReporting", checksum: "8b0b26b42c39215dbe7a4a9bcd162bdf7d0fbbb99ee8569a04236ab04485844d"),
        binaryTarget("BagbutikTestFlightModels", checksum: "5bd347db89a80c966d4d42f2e9ccf6866a92aef69b28b55ae6bb9407c8798180"),
        binaryTarget("BagbutikTestFlight", checksum: "2cf45fc03d9c3e17381b70113a15c2d27b2f69b832d58e42af18f7ec5a48f6c0"),
        binaryTarget("BagbutikUsersModels", checksum: "0987cc409f671d4e53a6718471189267394d7516deacbb89a2de64fc6caeb60c"),
        binaryTarget("BagbutikUsers", checksum: "765f06c4a7fb8b8fa57a6cfc7f72ef434294e218a3e331990d81261560c08c61"),
        binaryTarget("BagbutikWebhooksModels", checksum: "a4bccb86233f6c40c0ef4112f8efd31105ce0f5bb911118103b9c6cf52910e8b"),
        binaryTarget("BagbutikWebhooks", checksum: "7de433f8f3a8ca8acfcd6959d167a335216b517c549a284117e5953e6362f698"),
        binaryTarget("BagbutikXcodeCloudModels", checksum: "2b6f3dcac49b2f973b5377bc7fe486ec1cc77400512463c8b949e9f6a532b771"),
        binaryTarget("BagbutikXcodeCloud", checksum: "edb20b5ea2be0337bcd31288a54681416ce157813c6399a1c315ec042c731a5b"),
    ]
)
