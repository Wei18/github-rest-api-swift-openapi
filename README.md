# GitHub's REST API Swift Language Code Generator

This Swift code generator is built upon the [Swift OpenAPI Generator](https://github.com/apple/swift-openapi-generator) and leverages the OpenAPI description for GitHub's REST API. The goal is to automate the creation of Swift language bindings, providing developers with a seamless way to interact with GitHub's REST API.

## Example

### Get Users
https://github.com/Wei18/github-rest-api-swift-openapi/blob/46bd7a951cd6a2bda9a9d26d843d55bb12f769c3/Tests/UsersTests/UsersTests.swift#L8-L15

## Overview

[OpenAPI](https://www.openapis.org/) serves as a standardized way to document HTTP services. It allows developers to automate workflows, such as generating code for making HTTP requests or implementing API servers. The Swift OpenAPI Generator is a Swift package plugin designed to generate code at build-time, ensuring it remains synchronized with the OpenAPI document.

Use [Submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules) to clone [github/rest-api-description](https://github.com/github/ and then split openapi tags into multiple modules (Swift Package Products).

# Motivation

Wanna use Swift as the development language to create some convenient and user-friendly GitHub Actions.

# Contributions

Contributions are welcome! If you encounter issues or have suggestions for improvements, feel free to open an issue or submit a pull request.
