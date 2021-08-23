// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Mime",
    platforms: [
        .iOS(.v10),
        .tvOS(.v10),
        .macOS(.v10_12)
    ],
    products: [
        .library(
            name: "Mime",
            targets: ["Mime"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Mime",
            dependencies: []
        ),
        .testTarget(
            name: "MimeTests",
            dependencies: ["Mime"]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
