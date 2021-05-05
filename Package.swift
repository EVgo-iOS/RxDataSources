// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "RxDataSources",
  platforms: [
    .iOS(.v9), .tvOS(.v9)
  ],
  products: [
    .library(name: "RxDataSources", targets: ["RxDataSources"]),
  ],
  dependencies: [
    .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0"))
  ],
  targets: [
    .target(name: "RxDataSources", dependencies: ["RxSwift", "RxCocoa"]),
    .testTarget(name: "RxDataSourcesTests", dependencies: ["RxDataSources"])
  ],
  swiftLanguageVersions: [.v5]
)
