// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "NoMAD-ADAuth",
    products: [
        .library(name: "NoMAD-ADAuth", targets: ["NoMAD-ADAuth", "NoMADPRIVATE"])
    ],
    targets: [
        .target(
            name: "NoMADPRIVATE",
            path: "NoMAD-ADAuth/ObjC",
            publicHeadersPath: "."
        ),
        .target(
            name: "NoMAD-ADAuth",
            path: "NoMAD-ADAuth",
            exclude: ["ObjC", "FRAMEWORK.md", "Info.plist"]
        ),
    ]
)
