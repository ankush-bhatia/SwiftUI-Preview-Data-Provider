// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PreviewDataProvider",
    platforms: [
        .macOS(SupportedPlatform.MacOSVersion.v10_15),
        .iOS(SupportedPlatform.IOSVersion.v13),
        .tvOS(SupportedPlatform.TVOSVersion.v13),
        .watchOS(SupportedPlatform.WatchOSVersion.v6)
    ],
    products: [
        .library(
            name: "PreviewDataProvider",
            targets: ["PreviewDataProvider"]),
    ],
    targets: [
        .target(
            name: "PreviewDataProvider",
            dependencies: [],
            exclude: ["PreviewDataProviderExample"]),
        .testTarget(
            name: "PreviewDataProviderTests",
            dependencies: ["PreviewDataProvider"],
            exclude: ["PreviewDataProviderExample"]),
    ]
)
