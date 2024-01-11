// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

/// Generated via `$swift PackageBuilder.swift`
let package = Package(
    name: "GitHubRestAPISwiftOpenAPI",
    platforms: [
        .macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6), .visionOS(.v1),
    ],
    products: [
        .library(name: "GitHubRestAPISearch", targets: ["GitHubRestAPISearch"]),
        .library(name: "GitHubRestAPIReactions", targets: ["GitHubRestAPIReactions"]),
        .library(name: "GitHubRestAPIMeta", targets: ["GitHubRestAPIMeta"]),
        .library(name: "GitHubRestAPIGit", targets: ["GitHubRestAPIGit"]),
        .library(name: "GitHubRestAPIEmojis", targets: ["GitHubRestAPIEmojis"]),
        .library(name: "GitHubRestAPIInteractions", targets: ["GitHubRestAPIInteractions"]),
        .library(name: "GitHubRestAPIDependabot", targets: ["GitHubRestAPIDependabot"]),
        .library(name: "GitHubRestAPIMarkdown", targets: ["GitHubRestAPIMarkdown"]),
        .library(name: "GitHubRestAPIChecks", targets: ["GitHubRestAPIChecks"]),
        .library(name: "GitHubRestAPIApps", targets: ["GitHubRestAPIApps"]),
        .library(name: "GitHubRestAPIUsers", targets: ["GitHubRestAPIUsers"]),
        .library(name: "GitHubRestAPICopilot", targets: ["GitHubRestAPICopilot"]),
        .library(name: "GitHubRestAPIRepos", targets: ["GitHubRestAPIRepos"]),
        .library(name: "GitHubRestAPIRate_Limit", targets: ["GitHubRestAPIRate_Limit"]),
        .library(name: "GitHubRestAPITeams", targets: ["GitHubRestAPITeams"]),
        .library(name: "GitHubRestAPIPulls", targets: ["GitHubRestAPIPulls"]),
        .library(name: "GitHubRestAPISecurity_Advisories", targets: ["GitHubRestAPISecurity_Advisories"]),
        .library(name: "GitHubRestAPIActions", targets: ["GitHubRestAPIActions"]),
        .library(name: "GitHubRestAPIMigrations", targets: ["GitHubRestAPIMigrations"]),
        .library(name: "GitHubRestAPIIssues", targets: ["GitHubRestAPIIssues"]),
        .library(name: "GitHubRestAPIGists", targets: ["GitHubRestAPIGists"]),
        .library(name: "GitHubRestAPICodespaces", targets: ["GitHubRestAPICodespaces"]),
        .library(name: "GitHubRestAPICodes_Of_Conduct", targets: ["GitHubRestAPICodes_Of_Conduct"]),
        .library(name: "GitHubRestAPISecret_Scanning", targets: ["GitHubRestAPISecret_Scanning"]),
        .library(name: "GitHubRestAPICode_Scanning", targets: ["GitHubRestAPICode_Scanning"]),
        .library(name: "GitHubRestAPIClassroom", targets: ["GitHubRestAPIClassroom"]),
        .library(name: "GitHubRestAPIProjects", targets: ["GitHubRestAPIProjects"]),
        .library(name: "GitHubRestAPIOrgs", targets: ["GitHubRestAPIOrgs"]),
        .library(name: "GitHubRestAPIDependency_Graph", targets: ["GitHubRestAPIDependency_Graph"]),
        .library(name: "GitHubRestAPILicenses", targets: ["GitHubRestAPILicenses"]),
        .library(name: "GitHubRestAPIPackages", targets: ["GitHubRestAPIPackages"]),
        .library(name: "GitHubRestAPIOidc", targets: ["GitHubRestAPIOidc"]),
        .library(name: "GitHubRestAPIActivity", targets: ["GitHubRestAPIActivity"]),
        .library(name: "GitHubRestAPIBilling", targets: ["GitHubRestAPIBilling"]),
        .library(name: "GitHubRestAPIGitignore", targets: ["GitHubRestAPIGitignore"]),
        .library(name: "GitHubRestAPIDesktop", targets: ["GitHubRestAPIDesktop"]),
        .library(name: "GitHubRestAPIMerge_Queue", targets: ["GitHubRestAPIMerge_Queue"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-openapi-runtime", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-openapi-urlsession", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "GitHubRestAPISearch",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/search"
        ),
        .target(
            name: "GitHubRestAPIReactions",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/reactions"
        ),
        .target(
            name: "GitHubRestAPIMeta",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/meta"
        ),
        .target(
            name: "GitHubRestAPIGit",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/git"
        ),
        .target(
            name: "GitHubRestAPIEmojis",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/emojis"
        ),
        .target(
            name: "GitHubRestAPIInteractions",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/interactions"
        ),
        .target(
            name: "GitHubRestAPIDependabot",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/dependabot"
        ),
        .target(
            name: "GitHubRestAPIMarkdown",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/markdown"
        ),
        .target(
            name: "GitHubRestAPIChecks",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/checks"
        ),
        .target(
            name: "GitHubRestAPIApps",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/apps"
        ),
        .target(
            name: "GitHubRestAPIUsers",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/users"
        ),
        .target(
            name: "GitHubRestAPICopilot",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/copilot"
        ),
        .target(
            name: "GitHubRestAPIRepos",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/repos"
        ),
        .target(
            name: "GitHubRestAPIRate_Limit",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/rate-limit"
        ),
        .target(
            name: "GitHubRestAPITeams",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/teams"
        ),
        .target(
            name: "GitHubRestAPIPulls",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/pulls"
        ),
        .target(
            name: "GitHubRestAPISecurity_Advisories",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/security-advisories"
        ),
        .target(
            name: "GitHubRestAPIActions",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/actions"
        ),
        .target(
            name: "GitHubRestAPIMigrations",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/migrations"
        ),
        .target(
            name: "GitHubRestAPIIssues",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/issues"
        ),
        .target(
            name: "GitHubRestAPIGists",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/gists"
        ),
        .target(
            name: "GitHubRestAPICodespaces",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/codespaces"
        ),
        .target(
            name: "GitHubRestAPICodes_Of_Conduct",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/codes-of-conduct"
        ),
        .target(
            name: "GitHubRestAPISecret_Scanning",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/secret-scanning"
        ),
        .target(
            name: "GitHubRestAPICode_Scanning",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/code-scanning"
        ),
        .target(
            name: "GitHubRestAPIClassroom",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/classroom"
        ),
        .target(
            name: "GitHubRestAPIProjects",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/projects"
        ),
        .target(
            name: "GitHubRestAPIOrgs",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/orgs"
        ),
        .target(
            name: "GitHubRestAPIDependency_Graph",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/dependency-graph"
        ),
        .target(
            name: "GitHubRestAPILicenses",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/licenses"
        ),
        .target(
            name: "GitHubRestAPIPackages",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/packages"
        ),
        .target(
            name: "GitHubRestAPIOidc",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/oidc"
        ),
        .target(
            name: "GitHubRestAPIActivity",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/activity"
        ),
        .target(
            name: "GitHubRestAPIBilling",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/billing"
        ),
        .target(
            name: "GitHubRestAPIGitignore",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/gitignore"
        ),
        .target(
            name: "GitHubRestAPIDesktop",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/desktop"
        ),
        .target(
            name: "GitHubRestAPIMerge_Queue",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/merge-queue"
        ),
        .testTarget(
            name: "UsersTests",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
                .target(name: "GitHubRestAPIUsers"),
            ]
        )
    ]
)

