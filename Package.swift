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
    .package(url: "https://github.com/AsioOtus/Multitool", branch: "main"),
    .package(url: "https://github.com/AsioOtus/MultitoolComplex", branch: "main")
  ],
  targets: [
    .target(
      name: "SharedModels",
      dependencies: [
        "Multitool",
        "MultitoolComplex",
      ]
    ),
    .target(
      name: "NetworkModels",
      dependencies: [
        "Multitool",
        "MultitoolComplex",
        "SharedModels",
      ]
    )
  ]
)
