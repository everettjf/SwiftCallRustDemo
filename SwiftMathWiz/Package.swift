// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription
import Foundation

let package = Package(
        name: "SwiftMathWiz",
        platforms: [
            .iOS(.v13),
            .macOS(.v11)
        ],
        products: [
            .library(
                name: "SwiftMathWiz",
                targets: ["SwiftMathWiz"]),
        ],
        targets: [
            .target(
                name: "SwiftMathWiz",
                dependencies: ["MathWiz"]),
            .binaryTarget(
                name: "MathWiz",
                path: "MathWiz.xcframework"
            ),
        ]
)
