// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "splitter-shared-models",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
  ],
  products: [
    .library(
      name: "SharedModels",
      targets: [
        "SharedModels",
        "NetworkModels"
      ]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/AsioOtus/multitool", branch: "main"),
  ],
  targets: [
    .target(
      name: "SharedModels",
      dependencies: [
				.product(name: "Multitool", package: "multitool"),
      ]
    ),
    .target(
      name: "NetworkModels",
      dependencies: [
				.product(name: "Multitool", package: "multitool"),
        "SharedModels",
      ]
    )
  ]
)
