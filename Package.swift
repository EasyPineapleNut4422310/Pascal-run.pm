// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "PascalRunPM",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .executable(
            name: "PascalRunPM",
            targets: ["PascalRunPM"]
        )
    ],
    dependencies: [
        // Add dependencies here if the project uses any external packages
        // Example:
         .package(url: "https://github.com/EasyPineapleNut4422310/Pascal-run.pm.git", from: "1.0.0")
    ],
    targets: [
        .executableTarget(
            name: "PascalRunPM",
            dependencies: [
                // If using ArgumentParser, uncomment:
                // .product(name: "ArgumentParser", package: "swift-argument-parser")
            ],
            path: "Sources/PascalRunPM"
        ),
        .testTarget(
            name: "PascalRunPMTests",
            dependencies: ["PascalRunPM"],
            path: "Tests/PascalRunPMTests"
        )
    ]
)
