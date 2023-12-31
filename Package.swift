// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

/// The generator supports filtering the OpenAPI document prior to generation, 
/// which can be useful when generating client code for a subset of a large API, 
/// or splitting an implementation of a server across multiple modules.
enum GitHubRestAPIOpenAPITag: String, CaseIterable {
    case activity
    case apps
    case billing
    case checks
    case codeScanning = "code-scanning"
    case codesOfConduct = "codes-of-conduct"
    case emojis
    case dependabot
    case dependencyGraph = "dependency-graph"
    case gists
    case git
    case gitignore
    case issues
    case licenses
    case markdown
    case mergeQueue = "merge-queue"
    case meta
    case migrations
    case oidc
    case orgs
    case packages
    case projects
    case pulls
    case rateLimit = "rate-limit"
    case reactions
    case repos
    case search
    case secretScanning = "secret-scanning"
    case teams
    case users
    case codespaces
    case copilot
    case securityAdvisories = "security-advisories"
    case interactions
    case classroom
    case desktop

    var target: PackageDescription.Target {
        .target(
            name: rawValue,
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            plugins: [
                .plugin(name: "OpenAPIGenerator", package: "swift-openapi-generator"),
            ]
        )
    }

    var library: PackageDescription.Product {
        .library(
            name: "GitHubRestAPI-\(rawValue)", 
            targets: [rawValue]
        )
    }
    
    var testTarget: PackageDescription.Target {
        .testTarget(
            name: "UserTests",
            dependencies: [
                .target(name: rawValue)
            ]
        )
    }
    static var allInOne: PackageDescription.Product = .library(
        name: "GitHubRestAPISwiftOpenAPI",
        targets: GitHubRestAPIOpenAPITag.allCases.map(\.rawValue)
    )
}

let package = Package(
    name: "GitHubRestAPISwiftOpenAPI",
    platforms: [.macOS(.v10_15)],
    products: GitHubRestAPIOpenAPITag.allCases.map(\.library) + [
        GitHubRestAPIOpenAPITag.allInOne
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-openapi-generator", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-openapi-runtime", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-openapi-urlsession", from: "1.0.0"),
    ],
    targets: GitHubRestAPIOpenAPITag.allCases.map(\.target) + [
        GitHubRestAPIOpenAPITag.users.testTarget,
    ]
)

let isBuildDocC = ProcessInfo.processInfo.environment["GITHUB_PAGES"] == "true"

// swift-docs is not needed for package users
if isBuildDocC {
    package.dependencies += [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.3.0"),
    ]
}
