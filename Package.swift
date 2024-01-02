// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

// let isBuildingCode = ProcessInfo.processInfo.environment["BUILD_CODE"] == "true"
let isBuildingCode = true
let isBuildingDocC = ProcessInfo.processInfo.environment["GITHUB_PAGES"] == "true"

let package = Package(
    name: "GitHubRestAPISwiftOpenAPI",
    platforms: [.macOS(.v10_15)],
    products: GitHubRestAPIOpenAPITag.allCases.map(\.library),
    dependencies: [
        .package(url: "https://github.com/apple/swift-openapi-runtime", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-openapi-urlsession", from: "1.0.0"),
    ],
    targets: GitHubRestAPIOpenAPITag.allCases.map(\.target)
    + GitHubRestAPIOpenAPITag.allCases.compactMap(\.testTarget)
)

// dependencies is needed for package users
if !isBuildingCode {
    package.targets += [
        GitHubRestAPIOpenAPITag.dependenciesTarget
    ]
}

// swift-docs is not needed for package users
if isBuildingDocC {
    package.dependencies += [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.3.0"),
    ]
}

/// The generator supports filtering the OpenAPI document prior to generation,
/// which can be useful when generating client code for a subset of a large API, 
/// or splitting an implementation of a server across multiple modules.
enum GitHubRestAPIOpenAPITag: String, CaseIterable {
    case actions
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

    var library: PackageDescription.Product {
        let targetName = targetName
        if isBuildingCode {
            return .library(
                name: targetName,
                targets: [targetName]
            )
        } else {
            return .library(
                name: targetName,
                targets: [targetName, Self.dependenciesTarget.name]
            )
        }
    }

    private var targetName: String {
        let name = rawValue.replacingOccurrences(of: "-", with: "_").capitalized
        return "GitHubRestAPI\(name)"
    }
    
    var target: PackageDescription.Target {
        let targetName = targetName
        if isBuildingCode {
            return .target(
                name: targetName,
                dependencies: [
                    .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                    .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
                ],
                path: "Sources/\(rawValue)",
                exclude: [
                    "openapi-generator-config.yml",
                    "openapi.yml",
                ]
            )
        } else {
            return .binaryTarget(
                name: targetName,
                path: "XCFrameworks/\(targetName).zip")
        }
    }
    
    var testTarget: PackageDescription.Target? {
        guard self == .users else { return nil }
        let dependencies: [Target.Dependency] = [
            .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
            .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
        ]
        let targetName = targetName
        return .testTarget(
            name: "UserTests",
            dependencies: dependencies + [
                .target(name: targetName)
            ]
        )
    }

    static var dependenciesTarget: PackageDescription.Target = .target(
        name: "DependenciesTarget",
        dependencies: [
            .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
            .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
        ],
        path: "XCFrameworks/DependenciesTarget"
    )

}
