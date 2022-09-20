// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "git-kit",
    products: [
        .library(name: "GitKit", targets: ["GitKit"]),
    ],
    dependencies: [
        .package(url: "git@github.com:andyj-at-aspin/shell-kit.git", from: "1.0.0"),
    ],
    targets: [
        .target(name: "GitKit", dependencies: [
            .product(name: "ShellKit", package: "shell-kit"),
        ]),
        .testTarget(name: "GitKitTests", dependencies: ["GitKit"]),
    ]
)
