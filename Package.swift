// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

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

    var targetName: String {
        let name = rawValue.replacingOccurrences(of: "-", with: "_").capitalized
        return "GitHubRestAPI\(name)"
    }

    var sourcePath: String { "Sources/\(rawValue)" }

}

protocol PackageConfigSpec {
    var libraries: [PackageDescription.Product] { get }
    var targets: [PackageDescription.Target] { get }
}

struct SourceCodePackageConfigSpec: PackageConfigSpec {
    let allCases = GitHubRestAPIOpenAPITag.allCases

    var libraries: [PackageDescription.Product] {
        return allCases.map(\.targetName).map { targetName in
            .library(name: targetName, targets: [targetName])
        }
    }

    var targets: [PackageDescription.Target] {
        return allCases.map { aCase in
            let (targetName, sourcePath) = (aCase.targetName, aCase.sourcePath)
            return .target(
                name: targetName,
                dependencies: [
                    .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                    .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
                ],
                path: sourcePath,
                exclude: [
                    "openapi-generator-config.yml",
                    "openapi.yml",
                ]
            )
        } + testTargets
    }

    private var testTargets: [PackageDescription.Target] {
        let targetName = GitHubRestAPIOpenAPITag.users.targetName
        return [
            .testTarget(
                name: "UserTests",
                dependencies: [
                    .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                    .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
                    .target(name: targetName),
                ]
            )
        ]
    }

}

struct XCFrameworkPackageConfigSpec: PackageConfigSpec {
    let allCases = GitHubRestAPIOpenAPITag.allCases

    var dependenciesTarget: PackageDescription.Target = .target(
        name: "DependenciesTarget",
        dependencies: [
            .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
            .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
        ],
        path: "XCFrameworks/DependenciesTarget"
    )

    var libraries: [PackageDescription.Product] {
        return allCases.map(\.targetName).map { targetName in
            .library(name: targetName, targets: [targetName, dependenciesTarget.name])
        }
    }

    var targets: [PackageDescription.Target] {
        return allCases.map(\.targetName).map { targetName in
            return .binaryTarget(name: targetName, path: "XCFrameworks/\(targetName).zip")
        } + testTargets + [dependenciesTarget]
    }

    private var testTargets: [PackageDescription.Target] {
        let targetName = GitHubRestAPIOpenAPITag.users.targetName
        return [
            .testTarget(
                name: "UserTests",
                dependencies: [
                    .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                    .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
                    .target(name: targetName),
                ]
            )
        ]
    }

}

let config: PackageConfigSpec = {
    /// Currently Disabled XCFrameworkPackageConfig
    let isSourceCodePackageConfigSpec = true
    if isSourceCodePackageConfigSpec {
        return SourceCodePackageConfigSpec()
    } else {
        return XCFrameworkPackageConfigSpec()
    }
}()

let package = Package(
    name: "GitHubRestAPISwiftOpenAPI",
    platforms: [.macOS(.v10_15)],
    products: config.libraries,
    dependencies: [
        .package(url: "https://github.com/apple/swift-openapi-runtime", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-openapi-urlsession", from: "1.0.0"),
    ],
    targets: config.targets
)

let isBuildingDocC = ProcessInfo.processInfo.environment["GITHUB_PAGES"] == "true"
// swift-docs is not needed for package users
if isBuildingDocC {
    package.dependencies += [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.3.0"),
    ]
}
