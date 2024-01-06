// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

/// Generated via `$swift PackageBuilder.swift`
let package = Package(
    name: "GitHubRestAPISwiftOpenAPI",
    platforms: [
        .macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6),
    ],
    products: [
        .library(name: "GitHubRestAPIRepos", targets: ["GitHubRestAPIRepos"]),
        .library(name: "GitHubRestAPIMigrations", targets: ["GitHubRestAPIMigrations"]),
        .library(name: "GitHubRestAPIInteractions", targets: ["GitHubRestAPIInteractions"]),
        .library(name: "GitHubRestAPIMerge_Queue", targets: ["GitHubRestAPIMerge_Queue"]),
        .library(name: "GitHubRestAPILicenses", targets: ["GitHubRestAPILicenses"]),
        .library(name: "GitHubRestAPICopilot", targets: ["GitHubRestAPICopilot"]),
        .library(name: "GitHubRestAPIActivity", targets: ["GitHubRestAPIActivity"]),
        .library(name: "GitHubRestAPIChecks", targets: ["GitHubRestAPIChecks"]),
        .library(name: "GitHubRestAPIMarkdown", targets: ["GitHubRestAPIMarkdown"]),
        .library(name: "GitHubRestAPIProjects", targets: ["GitHubRestAPIProjects"]),
        .library(name: "GitHubRestAPIReactions", targets: ["GitHubRestAPIReactions"]),
        .library(name: "GitHubRestAPIOidc", targets: ["GitHubRestAPIOidc"]),
        .library(name: "GitHubRestAPIMeta", targets: ["GitHubRestAPIMeta"]),
        .library(name: "GitHubRestAPIClassroom", targets: ["GitHubRestAPIClassroom"]),
        .library(name: "GitHubRestAPIDesktop", targets: ["GitHubRestAPIDesktop"]),
        .library(name: "GitHubRestAPIOrgs", targets: ["GitHubRestAPIOrgs"]),
        .library(name: "GitHubRestAPISearch", targets: ["GitHubRestAPISearch"]),
        .library(name: "GitHubRestAPICodespaces", targets: ["GitHubRestAPICodespaces"]),
        .library(name: "GitHubRestAPICodes_Of_Conduct", targets: ["GitHubRestAPICodes_Of_Conduct"]),
        .library(name: "GitHubRestAPIUsers", targets: ["GitHubRestAPIUsers"]),
        .library(name: "GitHubRestAPIPackages", targets: ["GitHubRestAPIPackages"]),
        .library(name: "GitHubRestAPIActions", targets: ["GitHubRestAPIActions"]),
        .library(name: "GitHubRestAPITeams", targets: ["GitHubRestAPITeams"]),
        .library(name: "GitHubRestAPIPulls", targets: ["GitHubRestAPIPulls"]),
        .library(name: "GitHubRestAPIDependency_Graph", targets: ["GitHubRestAPIDependency_Graph"]),
        .library(name: "GitHubRestAPIEmojis", targets: ["GitHubRestAPIEmojis"]),
        .library(name: "GitHubRestAPICode_Scanning", targets: ["GitHubRestAPICode_Scanning"]),
        .library(name: "GitHubRestAPISecurity_Advisories", targets: ["GitHubRestAPISecurity_Advisories"]),
        .library(name: "GitHubRestAPIIssues", targets: ["GitHubRestAPIIssues"]),
        .library(name: "GitHubRestAPIApps", targets: ["GitHubRestAPIApps"]),
        .library(name: "GitHubRestAPIGists", targets: ["GitHubRestAPIGists"]),
        .library(name: "GitHubRestAPIBilling", targets: ["GitHubRestAPIBilling"]),
        .library(name: "GitHubRestAPIRate_Limit", targets: ["GitHubRestAPIRate_Limit"]),
        .library(name: "GitHubRestAPIGit", targets: ["GitHubRestAPIGit"]),
        .library(name: "GitHubRestAPIGitignore", targets: ["GitHubRestAPIGitignore"]),
        .library(name: "GitHubRestAPISecret_Scanning", targets: ["GitHubRestAPISecret_Scanning"]),
        .library(name: "GitHubRestAPIDependabot", targets: ["GitHubRestAPIDependabot"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-openapi-runtime", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-openapi-urlsession", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "GitHubRestAPIRepos",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/repos"
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
            name: "GitHubRestAPIInteractions",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/interactions"
        ),
        .target(
            name: "GitHubRestAPIMerge_Queue",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/merge-queue"
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
            name: "GitHubRestAPICopilot",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/copilot"
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
            name: "GitHubRestAPIChecks",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/checks"
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
            name: "GitHubRestAPIProjects",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/projects"
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
            name: "GitHubRestAPIOidc",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/oidc"
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
            name: "GitHubRestAPIClassroom",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/classroom"
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
            name: "GitHubRestAPIOrgs",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/orgs"
        ),
        .target(
            name: "GitHubRestAPISearch",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/search"
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
            name: "GitHubRestAPIUsers",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/users"
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
            name: "GitHubRestAPIActions",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/actions"
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
            name: "GitHubRestAPIDependency_Graph",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/dependency-graph"
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
            name: "GitHubRestAPICode_Scanning",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/code-scanning"
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
            name: "GitHubRestAPIIssues",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/issues"
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
            name: "GitHubRestAPIGists",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/gists"
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
            name: "GitHubRestAPIRate_Limit",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/rate-limit"
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
            name: "GitHubRestAPIGitignore",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/gitignore"
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
            name: "GitHubRestAPIDependabot",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/dependabot"
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

