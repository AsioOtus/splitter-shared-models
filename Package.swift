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
      name: "SplitterSharedModels",
      targets: [
        "SplitterSharedModels",
        "SplitterNetworkModels"
      ]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/AsioOtus/Multitool", branch: "main"),
    .package(url: "https://github.com/AsioOtus/MultitoolComplex", branch: "main")
  ],
  targets: [
    .target(
      name: "SplitterSharedModels",
      dependencies: [
        "Multitool",
        "MultitoolComplex",
      ]
    ),
    .target(
      name: "SplitterNetworkModels",
      dependencies: [
        "Multitool",
        "MultitoolComplex",
        "SplitterSharedModels",
      ]
    )
  ]
)
