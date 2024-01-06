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
            path: "Sources/repos",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIMigrations",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/migrations",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIInteractions",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/interactions",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIMerge_Queue",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/merge-queue",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPILicenses",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/licenses",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPICopilot",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/copilot",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIActivity",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/activity",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIChecks",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/checks",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIMarkdown",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/markdown",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIProjects",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/projects",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIReactions",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/reactions",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIOidc",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/oidc",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIMeta",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/meta",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIClassroom",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/classroom",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIDesktop",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/desktop",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIOrgs",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/orgs",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPISearch",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/search",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPICodespaces",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/codespaces",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPICodes_Of_Conduct",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/codes-of-conduct",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIUsers",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/users",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIPackages",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/packages",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIActions",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/actions",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPITeams",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/teams",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIPulls",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/pulls",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIDependency_Graph",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/dependency-graph",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIEmojis",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/emojis",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPICode_Scanning",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/code-scanning",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPISecurity_Advisories",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/security-advisories",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIIssues",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/issues",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIApps",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/apps",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIGists",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/gists",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIBilling",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/billing",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIRate_Limit",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/rate-limit",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIGit",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/git",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIGitignore",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/gitignore",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPISecret_Scanning",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/secret-scanning",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .target(
            name: "GitHubRestAPIDependabot",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
            ],
            path: "Sources/dependabot",
            exclude: [
                "openapi-generator-config.yml",
                "openapi.yml",
            ]
        ),
        .testTarget(
            name: "UserTests",
            dependencies: [
                .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime"),
                .product(name: "OpenAPIURLSession", package: "swift-openapi-urlsession"),
                .target(name: "GitHubRestAPIUsers"),
            ]
        )
    ]
)