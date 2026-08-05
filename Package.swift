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
        binaryTarget("BagbutikCore", checksum: "fd1c454b343b26c7326037a35f31938282ac2ae3438ebe5f96b96da54d8e84bd"),
        binaryTarget("BagbutikModelsShared", checksum: "4cde4c24ae8b470a3d26dc0b8b3e1f3c72e3ef87ac7abd61d18269397961ecde"),
        binaryTarget("BagbutikAppStoreModels", checksum: "57a27f85c3f88b37af54078ff678717cbe67a65d0d3427bf887e6ffe833ba1a0"),
        binaryTarget("BagbutikAppStore", checksum: "cff9d8d49468231a025378ad66155a6f85aacf77f835d9dbc554b74fc72d321b"),
        binaryTarget("BagbutikGameCenterModels", checksum: "0da8f7787ef94791a7534bfcf3ba021d9c917e2a40789fdd7dff3cec37c95bac"),
        binaryTarget("BagbutikGameCenter", checksum: "4293c971a37ddb866b647886a06eb00217e26c756bec59553f29f1dc06b5fa01"),
        binaryTarget("BagbutikMarketplacesModels", checksum: "890af3f40e76f17fc9cb3c8e2c2715ebe61e73cc3456a61605e00ea3f3205a96"),
        binaryTarget("BagbutikMarketplaces", checksum: "a69898e91e56cc09b933694fd79e23caf9020e22a231728705ed288fca2557ac"),
        binaryTarget("BagbutikProvisioningModels", checksum: "7e639970a007b198359da305d6f50be40efe4a8d988ed36682a2138607514b8c"),
        binaryTarget("BagbutikProvisioning", checksum: "33fe5da037b9ac721c69b020fde96600e0ade958702ef666bb91dc6647c792f0"),
        binaryTarget("BagbutikReportingModels", checksum: "4b6d0f2bf9b96180434b42c19f370ca2a08a31f5291080ab4a2aa1bebef11582"),
        binaryTarget("BagbutikReporting", checksum: "24ba9b3b2639101bb65046e2abcae6423f4cef512dc0a8cf227f5061f90e1b53"),
        binaryTarget("BagbutikTestFlightModels", checksum: "c016b846bc9fd3ef0013106a470d7dc5f4cb2d10ab86fe4b16163e5a2aedaa17"),
        binaryTarget("BagbutikTestFlight", checksum: "47e687c175c67f7a511d7375a3c989aaefcabe146278076fa8c75e58b597bc73"),
        binaryTarget("BagbutikUsersModels", checksum: "4777aca7f06f2b7732b4df7e58a2edd39380ecc7fce91cd09a9f746980ceb650"),
        binaryTarget("BagbutikUsers", checksum: "6470df429063ca24f083fb4415f908e2d4bb3f1d8e79f9933a813fbaa39d944b"),
        binaryTarget("BagbutikWebhooksModels", checksum: "e4c8b6e62ed84b3c5f5e5d4b941f28d22f1797a248550e9830625b4e94f3bde7"),
        binaryTarget("BagbutikWebhooks", checksum: "96122f4c11239f4a1da1d9fdf3831ec6bd989ac882aa7b1c7d6b78d60649a916"),
        binaryTarget("BagbutikXcodeCloudModels", checksum: "b41666103a6bfdf079f9ca159d86ce969f940df959f54ec821963df2895e0d1a"),
        binaryTarget("BagbutikXcodeCloud", checksum: "064ca2ec55d25d7976e248f3ab4f06321eef6cc1de87f35112b10e00099cfc92"),
    ]
)
