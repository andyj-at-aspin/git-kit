// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "git-kit",
    products: [
        .library(name: "GitKit", targets: ["GitKit"]),
    ],
    dependencies: [
        .package(url: "git@github.com:andyj-at-aspin/shell-kit.git", branch: "aspin-custom"),
    ],
    targets: [
        .target(name: "GitKit", dependencies: [
            .product(name: "ShellKit", package: "shell-kit"),
        ]),
        .testTarget(name: "GitKitTests", dependencies: ["GitKit"]),
    ]
)
