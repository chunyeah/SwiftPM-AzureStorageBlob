// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "AzureStorageBlob",
    platforms: [
        .macOS(.v10_15), .iOS(.v12)
    ],
    products: [
        .library(name: "AzureStorageBlob", targets: ["AzureStorageBlob"])
    ],
    dependencies: [
        .package(name: "AzureCore", url: "https://github.com/Azure/SwiftPM-AzureCore.git", from: "1.0.0-beta.12")
    ],
    targets: [
        // Build targets
        .target(
            name: "AzureStorageBlob",
            dependencies: ["AzureCore"],
            path: "Source",
            exclude: [
                "README.md",
                "Tests",
                "Source/Supporting Files",
                "LICENSE"
            ]
        ),
        // Test targets
        .testTarget(
            name: "AzureStorageBlobTests",
            dependencies: ["AzureStorageBlob"],
            path: "Tests",
            exclude: [
                "Info.plist",
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
