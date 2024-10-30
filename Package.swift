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
        .package(url: "https://github.com/Flight-School/AnyCodable", .upToNextMajor(from: "0.6.1"))
    ],
    targets: [
        .target(name: "TKBatteryAPI",
                dependencies: [
                  .byName(name: "AnyCodable")
                ],
                path: "Packages/battery-api",
                sources: ["Sources"]
               )
    ]
)
