// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "YourGithubAPIExtension",
    dependencies: [
        .package(url: "https://github.com/wei18/github-rest-api-swift-openapi.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "YourGithubAPIExtension"
        )
    ]
)
