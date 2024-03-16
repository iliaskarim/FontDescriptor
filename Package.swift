// swift-tools-version: 5.10
import PackageDescription

let package = Package(
  name: "FontDescriptor",
  products: [
    .library(
      name: "FontDescriptor",
      targets: ["FontDescriptor"]),
  ],
  targets: [
    .target(
      name: "FontDescriptor"),
    .testTarget(
      name: "FontDescriptorTests",
      dependencies: ["FontDescriptor"]),
  ]
)
