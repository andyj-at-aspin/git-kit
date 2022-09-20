// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "git-kit",
    platforms: [.macOS(.v10_15)],
    products: [
        .library(name: "GitKit", targets: ["GitKit"]),
    ],
    dependencies: [
        .package(url: "git@github.com:andyj-at-aspin/shell-kit.git", exact: "2.0.0"),
    ],
    targets: [
        .target(name: "GitKit", dependencies: [
            .product(name: "ShellKit", package: "shell-kit"),
        ]),
        .testTarget(name: "GitKitTests", dependencies: ["GitKit"]),
    ]
)
