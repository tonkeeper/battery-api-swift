// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "BatteryAPI",
    platforms: [
        .iOS(.v13),
        .macOS(.v12),
    ],
    products: [
        .library(
            name: "BatteryAPI",
            targets: ["BatteryAPI"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-openapi-runtime", .upToNextMinor(from: "0.3.0")),
    ],
    targets: [
        .target(
            name: "BatteryAPI",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
            ],
            path: "Sources/BatteryAPI"
        ),
    ]
)
