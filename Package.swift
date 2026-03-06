// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TKBatteryAPI",
    platforms: [
      .macOS(.v12), .iOS(.v13)
    ],
    products: [
        .library(name: "TKBatteryAPI", targets: ["TKBatteryAPI"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-openapi-runtime", .upToNextMinor(from: "0.3.0"))
    ],
    targets: [
        .target(name: "TKBatteryAPI",
                dependencies: [
                  .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime")
                ],
                path: "Packages/battery-api/Sources",
                sources: ["BatteryAPI"]
               )
    ]
)
