// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyModule",
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
            name: "PresentationAway",
            targets: ["PresentationAway"]),
        .library(
            name: "Helpers",
            targets: ["Helpers"]),
        .library(
            name: "Router",
            targets: ["Router"]),
        .library(
            name: "PresentationGo",
            targets: ["PresentationGo"]),
        .library(
            name: "PresentationNew",
            targets: ["PresentationNew"]),
        .library(
            name: "PresentationNext",
            targets: ["PresentationNext"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Swinject/Swinject.git", from: "2.8.0"),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .exact("6.5.0"))


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
            name: "PresentationAway",
            dependencies: ["Swinject", "Module-login", "Helpers", "Router"]),
        .testTarget(
            name: "PresentationAwayTests",
            dependencies: ["PresentationAway"]),
        .target(
            name: "PresentationGo",
            dependencies: ["Swinject", "Module-login", "Helpers", "Router"]),
        .testTarget(
            name: "PresentationGoTests",
            dependencies: ["PresentationGo"]),
        .target(
            name: "PresentationNew",
            dependencies: ["Swinject", "Module-login", "Helpers", "Router",
                           .product(name: "RxSwift", package: "RxSwift"),
                           .product(name: "RxCocoa", package: "RxSwift")

                          ]),
        .testTarget(
            name: "PresentationNewTests",
            dependencies: ["PresentationNew"]),
        .target(
            name: "PresentationNext",
            dependencies: ["Swinject", "Module-login", "Helpers", "Router",
                           .product(name: "RxSwift", package: "RxSwift")

                          ]),
        .testTarget(
            name: "PresentationNextTests",
            dependencies: ["PresentationNext"]),
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
