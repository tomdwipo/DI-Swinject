// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Module-login",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        // point : - fast to test, - fast to compile, - easy to maintain
        .library(
            name: "Module-login",
            targets: ["Module-login"]),
        
        .library(
            name: "Away",
            targets: ["Away"]),
        .library(
            name: "Helpers",
            targets: ["Helpers"]),
        .library(
            name: "Router",
            targets: ["Router"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Swinject/Swinject.git", from: "2.8.0")

        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Module-login",
            dependencies: [
                .product(name: "Swinject", package: "Swinject")
            ]),
        .testTarget(
            name: "Module-loginTests",
            dependencies: ["Module-login"]),
       
        .target(
            name: "Away",
            dependencies: ["Swinject", "Module-login", "Helpers", "Router"]),
        .testTarget(
            name: "AwayTests",
            dependencies: ["Away"]),
        .target(
            name: "Helpers",
            dependencies: []),
        .testTarget(
            name: "HelpersTests",
            dependencies: ["Helpers"]),
        .target(
            name: "Router",
            dependencies: []),
        .testTarget(
            name: "RouterTests",
            dependencies: ["Router"]),
    ]
)
