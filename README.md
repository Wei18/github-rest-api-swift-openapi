# GitHub's REST API Swift Language Code Generator

[![Swift](https://img.shields.io/badge/Swift-5.9-orange?style=flat-square)](https://img.shields.io/badge/Swift-5.9-orange?style=flat-square)
[![Platforms](https://img.shields.io/badge/Platforms-macOS-orange?style=flat-square)](https://img.shields.io/badge/Platforms-macOS-orange?style=flat-square)
[![Swift Package Manager](https://img.shields.io/badge/Swift_Package_Manager-compatible-orange?style=flat-square)](https://img.shields.io/badge/Swift_Package_Manager-compatible-orange?style=flat-square)

This Swift code generator is built upon the [Swift OpenAPI Generator](https://github.com/apple/swift-openapi-generator) and leverages the OpenAPI description for GitHub's REST API. The goal is to automate the creation of Swift language bindings, providing developers with a seamless way to interact with GitHub's REST API.

## Usage
- Example: How to get users.
    https://github.com/Wei18/github-rest-api-swift-openapi/blob/46bd7a951cd6a2bda9a9d26d843d55bb12f769c3/Tests/UsersTests/UsersTests.swift#L8-L15

- Example: Enhance issues comment API
    ```swift
    // Usage.swift
    // -
    import Foundation
    import GitHubRestAPIIssues
    import OpenAPIRuntime
    import OpenAPIURLSession
    import HTTPTypes
    
    struct GitHubRestAPIIssuesExtension {
    
        let owner: String
    
        let repo: String
    
        /// The issue number or pull number.
        let number: Int
    
        /// Update the comment if the anchor is found; otherwise, create it.
        func comment(anchor: String, body: String) async throws {
            let hidingContent = "<!-- Comment anchor: \(anchor) -->"
            let newBody = "\(body)\n\n\(hidingContent)"
    
            let client = Client(
                serverURL: try Servers.server1(),
                transport: URLSessionTransport(),
                middlewares: [AuthenticationMiddleware(token: nil)]
            )
    
            let comments = try await client.issues_sol_list_hyphen_comments(
                path: .init(owner: owner, repo: repo, issue_number: number)
            ).ok.body.json
    
            if let comment = comments.first(where: { $0.body?.contains(hidingContent) == true }) {
                _ = try await client.issues_sol_update_hyphen_comment(
                    path: .init(owner: owner, repo: repo, comment_id: Components.Parameters.comment_hyphen_id(comment.id)),
                    body: .json(.init(body: newBody))
                )
            } else {
                _ = try await client.issues_sol_create_hyphen_comment(
                    path: .init(owner: owner, repo: repo, issue_number: number),
                    body: .json(.init(body: newBody))
                )
            }
        }
    }
    ```
## Installation

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler.

Once you have your Swift package set up, adding github-rest-api-swift-openapi as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

dependencies: [
    .package(url: "https://github.com/Wei18/github-rest-api-swift-openapi.git", from: "1.0.0"),
]
```

## Overview

[OpenAPI](https://www.openapis.org/) serves as a standardized way to document HTTP services. It allows developers to automate workflows, such as generating code for making HTTP requests or implementing API servers. 

The [Swift OpenAPI Generator](https://github.com/apple/swift-openapi-generator) is a Swift package plugin designed to generate code at build-time, ensuring it remains synchronized with the OpenAPI document.

Use [Submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules) to clone [github/rest-api-description](https://github.com/github/rest-api-description) and then split openapi tags into multiple modules (Swift Package Products).

# Motivation

Wanna use Swift as the development language to create some convenient and user-friendly GitHub Actions.

# Contributions

Contributions are welcome! If you encounter issues or have suggestions for improvements, feel free to open an issue or submit a pull request.
