import PackageDescription

let package = Package(
    name: "PascalRunPM",

    platforms: [
        .macOS(.v13),
        .iOS(.v16)
    ],

    products: [
        .library(
            name: "PascalRunPM",
            targets: ["PascalRunPM"]
        )
    ],

    dependencies: [
        // Example dependency (only include if you actually use it)
        .package(
            url: "https://github.com/EasyPineapleNut4422310/Pascal-run.pm/tree/main",
            from: "1.0.0"
        )
    ],

    targets: [
        .target(
            name: "PascalRunPM",
            dependencies: [
                .product(
                    name: "ArgumentParser",
                    package: "swift-argument-parser"
                )
            ],
            path: "Sources/PascalRunPM"
        ),

        .testTarget(
            name: "PascalRunPMTests",
            dependencies: ["PascalRunPM"],
            path: "Tests/PascalRunPMTests"
        )
    ],

    swiftLanguageVersions: [
        .v5
    ]
)
