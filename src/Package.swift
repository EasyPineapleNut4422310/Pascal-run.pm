// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "PascalRun",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "PascalRun",
            targets: ["PascalRun"]
        )
    ],
    targets: [
        .target(
            name: "PascalRun",
            path: "Sources/PascalRun"
        ),
        .testTarget(
            name: "PascalRunTests",
            dependencies: ["PascalRun"],
            path: "Tests/PascalRunTests"
        )
    ]
)
