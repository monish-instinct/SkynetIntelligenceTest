// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "SkynetIntelligence",
    platforms: [
        .iOS(.v12),  // Specify your supported platforms
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "SkynetIntelligence",
            targets: ["SkynetIntelligenceTarget"]
        ),
    ],
    dependencies: [
        // Add your SQLCipher dependency here
        .package(url: "https://github.com/stoneburner/SQLCipher.git", from: "0.0.4")
    ],
    targets: [
        .binaryTarget(
            name: "SkynetIntelligence",
            url: "https://github.com/yourusername/yourrepository/releases/download/v1.0.0/SkynetIntelligence.zip",
            checksum: "yourchecksumhere"  // Replace with the actual checksum of your .zip file
        ),
        .target(
            name: "SkynetIntelligenceTarget",
            dependencies: [
                "SkynetIntelligence",
                .product(name: "SQLCipher", package: "SQLCipher")
            ],
            path: "Sources"
        )
    ]
)
