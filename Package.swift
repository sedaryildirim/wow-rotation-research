// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "WoWRotationResearch",
    platforms: [.macOS(.v13)],
    products: [
        .library(name: "CombatCore", targets: ["CombatCore"])
    ],
    targets: [
        .target(name: "CombatCore"),
        .testTarget(name: "CombatCoreTests", dependencies: ["CombatCore"])
    ]
)
