// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ProcoreSwiftPackages",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "ProcoreSwiftPackages",
            targets: ["ProcoreSwiftPackages"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/xmartlabs/Eureka.git", exact: "5.3.6")
    ],
    targets: [
        .target(
            name: "ProcoreSwiftPackages",
            dependencies: ["Eureka"]
        ),
        .testTarget(
            name: "ProcoreSwiftPackagesTests",
            dependencies: ["ProcoreSwiftPackages"]),
    ]
)
