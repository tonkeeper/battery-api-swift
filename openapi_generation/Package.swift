// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "OpenAPIGeneration",
    dependencies: [
        .package(url: "https://github.com/apple/swift-openapi-generator", .upToNextMinor(from: "0.3.0"))
    ]
)
