// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "VerloopSDK",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "VerloopSDK",
            targets: ["VerloopSDK"]
        )
    ],
    targets: [
        .target(
            name: "VerloopSDK",
            path: "VerloopSDK",
            exclude: [
                "Info.plist",
                "VerloopSDK.h"
            ],
            resources: [
                .copy("PrivacyInfo.xcprivacy")
            ]
        ),
        .testTarget(
            name: "VerloopSDKTests",
            dependencies: ["VerloopSDK"],
            path: "VerloopSDKTests"
        )
    ]
)
