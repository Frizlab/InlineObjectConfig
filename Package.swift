// swift-tools-version:5.5
import PackageDescription


let package = Package(
	name: "InlineObjectConfig",
	products: [.library(name: "InlineObjectConfig", targets: ["InlineObjectConfig"])],
	targets: [
		.target(name: "InlineObjectConfig", path: "Sources")
	]
)
