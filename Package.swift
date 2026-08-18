// swift-tools-version:6.0

import PackageDescription

let releaseTag = "24.0.2"
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
        binaryTarget("BagbutikCore", checksum: "17e4050e83d9333d8f51eae3b7220951ca1484cbd6058c462c51f22cff5727d1"),
        binaryTarget("BagbutikModelsShared", checksum: "a8d2d024b599fecae0a59ba9373bc786e741fcb642289e2262c0abaeedc9f073"),
        binaryTarget("BagbutikAppStoreModels", checksum: "42e2d15afaeae329de731e36773373c939f8827e474c02c3876e3ae0c61f6eb9"),
        binaryTarget("BagbutikAppStore", checksum: "06cb3c701d4fe09cc0337d3bd504965e38a82cc76fcdafa607f29d233f204d69"),
        binaryTarget("BagbutikGameCenterModels", checksum: "7ea036b1d60e991b73d3f2fc681d6c82be9a55df7e755e241703cc4e503d1cec"),
        binaryTarget("BagbutikGameCenter", checksum: "d342e7901cd0449cd44819a22c73654fc51a769c0715a9502078ddd8a9ba0b63"),
        binaryTarget("BagbutikMarketplacesModels", checksum: "8a95934332b9a86d1d5543814fab8ab4cf0164fdc8bb4b3d8f1056ec2811b19a"),
        binaryTarget("BagbutikMarketplaces", checksum: "7b8a160151f65917d379ec731f39c655366e5526db6441712bf1a7410144c67f"),
        binaryTarget("BagbutikProvisioningModels", checksum: "6ecb251cb67fee7580dadfdeba36886d93e5bd012be2d3af1e5fbe9645218000"),
        binaryTarget("BagbutikProvisioning", checksum: "45fcd2cf4b0937602704b6e6752dd54231f6dded6133d067222fdfa73424515e"),
        binaryTarget("BagbutikReportingModels", checksum: "ffd2dde00fb537a08f8f176abdce3a72935b2fdaf73197e20dcd81634ef92f97"),
        binaryTarget("BagbutikReporting", checksum: "0a41f1e13a9fc55c75a3e2149dccec623ebcc85b4c38c4f01641eef9c1447407"),
        binaryTarget("BagbutikTestFlightModels", checksum: "8642990a02f6370b1876d906ea90e7ce577d621269d48ba36b9f8688ba44bd0f"),
        binaryTarget("BagbutikTestFlight", checksum: "6af9a301769beef973b696f8a269b7bd96d36b8d39bbefc7932d5f0f19c4f272"),
        binaryTarget("BagbutikUsersModels", checksum: "e2690b2738a19ffb589dfcd8db76ba9b2ed9c9a47450572304bd70c16cadb56a"),
        binaryTarget("BagbutikUsers", checksum: "5ef0b0e17b8eadfa2b70a7aad4950ebaff449d2156c9980934c325e438a55291"),
        binaryTarget("BagbutikWebhooksModels", checksum: "941ffec38338ae2bc716296e6149e70d696ceb1c03ecd0e8bf548f5074d8d140"),
        binaryTarget("BagbutikWebhooks", checksum: "f72ce8e6066296944cc6dd252c12da363050bd70f9ff2ff63d8c5fe2e97a8666"),
        binaryTarget("BagbutikXcodeCloudModels", checksum: "a3ecf5a5b0cb75dc85950584247151886166fc87710029abeb36dd1d228c5ffc"),
        binaryTarget("BagbutikXcodeCloud", checksum: "4ba57efb263b39acf50b662a5566445452b17acd0e6cb4390768b976fc509dee"),
    ]
)
