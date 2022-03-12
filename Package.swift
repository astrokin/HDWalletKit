// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "HDWalletKit",
     platforms: [
        .iOS(.v11),
        .macOS(.v10_11),
    ],
    products: [
        .library(
            name: "HDWalletKit",
            targets: ["HDWalletKit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Boilertalk/secp256k1.swift.git", .upToNextMajor(from: "0.1.4")),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", .upToNextMajor(from: "1.4.3"))
    ],
    targets: [
        .target(name: "HDWalletKit",
            dependencies: ["CryptoSwift", "secp256k1.swift"],
            path: "HDWalletKit"
        )
    ]
)