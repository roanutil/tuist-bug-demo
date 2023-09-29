// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "lib",
    products: [.library(name: "TuistTestCore", targets: ["TuistTestCore"])],
    targets: [.target(name: "TuistTestCore")]
)
