// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MWPhotoBrowser",
    products: [
        .library(
            name: "MWPhotoBrowser",
            targets: ["MWPhotoBrowser"]
        ),
    ],
    dependencies: [
        .package(url: "git@github.com:SDWebImage/SDWebImage.git", from: "5.19.0"),
    ],
    targets: [
        .target(
            name: "MWPhotoBrowser",
            dependencies: [
                "SDWebImage"
            ],
            path: "Pod/Classes",
            resources: [
                .process("Pod/Assets")
            ],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath(".")
            ]
        )
    ]
)
