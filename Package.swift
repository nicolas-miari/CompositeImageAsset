// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "CompositeImageAsset",
  platforms: [
    .iOS(.v15),
    .macOS(.v11)
  ],
  products: [
    // Products define the executables and libraries a package produces, and make them visible to other packages.
    .library(
      name: "CompositeImageAsset",
      targets: ["CompositeImageAsset"]),
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    .package(url: "https://github.com/nicolas-miari/Asset.git", from: "1.0.2"),
  ],
  targets: [
    .target(
      name: "CompositeImageAsset",
      dependencies: [
        .product(name: "Asset", package: "Asset"),
      ]),
    // This package defines protocol only, and not implementations, so there are no tests.
  ]
)
