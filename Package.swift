// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BVPlayer",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "BVPlayer",
            targets: ["BVPlayerTarget"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "BVPlayer",
            path: "Sources/Frameworks/BVPlayer.xcframework"
        ),
        .binaryTarget(
            name: "BVPSE",
            path: "Sources/Frameworks/BVPSE.xcframework"
        ),
        .target(
            name: "BVPlayerTarget",
            dependencies: [
                "BVPlayer",
                "BVPSE"
            ]
        ),
    ]
)
