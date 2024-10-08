// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "SkynetIntelligence",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "SkynetIntelligence",
            targets: ["SkynetIntelligenceTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/stoneburner/SQLCipher.git", from: "0.0.4")
    ],
    targets: [
        .binaryTarget(
            name: "SkynetIntelligence",
            url: "https://github.com/monish-instinct/SkynetIntelligenceTest/releases/download/swift/SkynetIntelligence.xcframework.zip",
            checksum: "74aae5bf421d97ffcb7358ab50195f4d8792c9ea0a3136cead5c5f6144d5787e"
        ),
        .target(
            name: "SkynetIntelligenceTarget",
            dependencies: [
                "SkynetIntelligence",
                .product(name: "SQLCipher", package: "SQLCipher")
            ],
            path: "Sources/SkynetIntelligenceTarget"  // Adjust based on actual path
        )
    ]
)
