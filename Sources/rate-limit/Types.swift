// Generated by swift-openapi-generator, do not modify.
@_spi(Generated) import OpenAPIRuntime
#if os(Linux)
@preconcurrency import struct Foundation.URL
@preconcurrency import struct Foundation.Data
@preconcurrency import struct Foundation.Date
#else
import struct Foundation.URL
import struct Foundation.Data
import struct Foundation.Date
#endif
/// A type that performs HTTP operations defined by the OpenAPI document.
public protocol APIProtocol: Sendable {
    /// Get rate limit status for the authenticated user
    ///
    /// > [!NOTE]
    /// > Accessing this endpoint does not count against your REST API rate limit.
    ///
    /// Some categories of endpoints have custom rate limits that are separate from the rate limit governing the other REST API endpoints. For this reason, the API response categorizes your rate limit. Under `resources`, you'll see objects relating to different categories:
    /// * The `core` object provides your rate limit status for all non-search-related resources in the REST API.
    /// * The `search` object provides your rate limit status for the REST API for searching (excluding code searches). For more information, see "[Search](https://docs.github.com/rest/search/search)."
    /// * The `code_search` object provides your rate limit status for the REST API for searching code. For more information, see "[Search code](https://docs.github.com/rest/search/search#search-code)."
    /// * The `graphql` object provides your rate limit status for the GraphQL API. For more information, see "[Resource limitations](https://docs.github.com/graphql/overview/resource-limitations#rate-limit)."
    /// * The `integration_manifest` object provides your rate limit status for the `POST /app-manifests/{code}/conversions` operation. For more information, see "[Creating a GitHub App from a manifest](https://docs.github.com/apps/creating-github-apps/setting-up-a-github-app/creating-a-github-app-from-a-manifest#3-you-exchange-the-temporary-code-to-retrieve-the-app-configuration)."
    /// * The `dependency_snapshots` object provides your rate limit status for submitting snapshots to the dependency graph. For more information, see "[Dependency graph](https://docs.github.com/rest/dependency-graph)."
    /// * The `code_scanning_upload` object provides your rate limit status for uploading SARIF results to code scanning. For more information, see "[Uploading a SARIF file to GitHub](https://docs.github.com/code-security/code-scanning/integrating-with-code-scanning/uploading-a-sarif-file-to-github)."
    /// * The `actions_runner_registration` object provides your rate limit status for registering self-hosted runners in GitHub Actions. For more information, see "[Self-hosted runners](https://docs.github.com/rest/actions/self-hosted-runners)."
    /// * The `source_import` object is no longer in use for any API endpoints, and it will be removed in the next API version. For more information about API versions, see "[API Versions](https://docs.github.com/rest/about-the-rest-api/api-versions)."
    ///
    /// > [!NOTE]
    /// > The `rate` object is closing down. If you're writing new API client code or updating existing code, you should use the `core` object instead of the `rate` object. The `core` object contains the same information that is present in the `rate` object.
    ///
    /// - Remark: HTTP `GET /rate_limit`.
    /// - Remark: Generated from `#/paths//rate_limit/get(rate-limit/get)`.
    func rate_hyphen_limit_sol_get(_ input: Operations.rate_hyphen_limit_sol_get.Input) async throws -> Operations.rate_hyphen_limit_sol_get.Output
}

/// Convenience overloads for operation inputs.
extension APIProtocol {
    /// Get rate limit status for the authenticated user
    ///
    /// > [!NOTE]
    /// > Accessing this endpoint does not count against your REST API rate limit.
    ///
    /// Some categories of endpoints have custom rate limits that are separate from the rate limit governing the other REST API endpoints. For this reason, the API response categorizes your rate limit. Under `resources`, you'll see objects relating to different categories:
    /// * The `core` object provides your rate limit status for all non-search-related resources in the REST API.
    /// * The `search` object provides your rate limit status for the REST API for searching (excluding code searches). For more information, see "[Search](https://docs.github.com/rest/search/search)."
    /// * The `code_search` object provides your rate limit status for the REST API for searching code. For more information, see "[Search code](https://docs.github.com/rest/search/search#search-code)."
    /// * The `graphql` object provides your rate limit status for the GraphQL API. For more information, see "[Resource limitations](https://docs.github.com/graphql/overview/resource-limitations#rate-limit)."
    /// * The `integration_manifest` object provides your rate limit status for the `POST /app-manifests/{code}/conversions` operation. For more information, see "[Creating a GitHub App from a manifest](https://docs.github.com/apps/creating-github-apps/setting-up-a-github-app/creating-a-github-app-from-a-manifest#3-you-exchange-the-temporary-code-to-retrieve-the-app-configuration)."
    /// * The `dependency_snapshots` object provides your rate limit status for submitting snapshots to the dependency graph. For more information, see "[Dependency graph](https://docs.github.com/rest/dependency-graph)."
    /// * The `code_scanning_upload` object provides your rate limit status for uploading SARIF results to code scanning. For more information, see "[Uploading a SARIF file to GitHub](https://docs.github.com/code-security/code-scanning/integrating-with-code-scanning/uploading-a-sarif-file-to-github)."
    /// * The `actions_runner_registration` object provides your rate limit status for registering self-hosted runners in GitHub Actions. For more information, see "[Self-hosted runners](https://docs.github.com/rest/actions/self-hosted-runners)."
    /// * The `source_import` object is no longer in use for any API endpoints, and it will be removed in the next API version. For more information about API versions, see "[API Versions](https://docs.github.com/rest/about-the-rest-api/api-versions)."
    ///
    /// > [!NOTE]
    /// > The `rate` object is closing down. If you're writing new API client code or updating existing code, you should use the `core` object instead of the `rate` object. The `core` object contains the same information that is present in the `rate` object.
    ///
    /// - Remark: HTTP `GET /rate_limit`.
    /// - Remark: Generated from `#/paths//rate_limit/get(rate-limit/get)`.
    public func rate_hyphen_limit_sol_get(headers: Operations.rate_hyphen_limit_sol_get.Input.Headers = .init()) async throws -> Operations.rate_hyphen_limit_sol_get.Output {
        try await rate_hyphen_limit_sol_get(Operations.rate_hyphen_limit_sol_get.Input(headers: headers))
    }
}

/// Server URLs defined in the OpenAPI document.
public enum Servers {
    public static func server1() throws -> Foundation.URL {
        try Foundation.URL(
            validatingOpenAPIServerURL: "https://api.github.com",
            variables: []
        )
    }
}

/// Types generated from the components section of the OpenAPI document.
public enum Components {
    /// Types generated from the `#/components/schemas` section of the OpenAPI document.
    public enum Schemas {
        /// Basic Error
        ///
        /// - Remark: Generated from `#/components/schemas/basic-error`.
        public struct basic_hyphen_error: Codable, Hashable, Sendable {
            /// - Remark: Generated from `#/components/schemas/basic-error/message`.
            public var message: Swift.String?
            /// - Remark: Generated from `#/components/schemas/basic-error/documentation_url`.
            public var documentation_url: Swift.String?
            /// - Remark: Generated from `#/components/schemas/basic-error/url`.
            public var url: Swift.String?
            /// - Remark: Generated from `#/components/schemas/basic-error/status`.
            public var status: Swift.String?
            /// Creates a new `basic_hyphen_error`.
            ///
            /// - Parameters:
            ///   - message:
            ///   - documentation_url:
            ///   - url:
            ///   - status:
            public init(
                message: Swift.String? = nil,
                documentation_url: Swift.String? = nil,
                url: Swift.String? = nil,
                status: Swift.String? = nil
            ) {
                self.message = message
                self.documentation_url = documentation_url
                self.url = url
                self.status = status
            }
            public enum CodingKeys: String, CodingKey {
                case message
                case documentation_url
                case url
                case status
            }
        }
        /// - Remark: Generated from `#/components/schemas/rate-limit`.
        public struct rate_hyphen_limit: Codable, Hashable, Sendable {
            /// - Remark: Generated from `#/components/schemas/rate-limit/limit`.
            public var limit: Swift.Int
            /// - Remark: Generated from `#/components/schemas/rate-limit/remaining`.
            public var remaining: Swift.Int
            /// - Remark: Generated from `#/components/schemas/rate-limit/reset`.
            public var reset: Swift.Int
            /// - Remark: Generated from `#/components/schemas/rate-limit/used`.
            public var used: Swift.Int
            /// Creates a new `rate_hyphen_limit`.
            ///
            /// - Parameters:
            ///   - limit:
            ///   - remaining:
            ///   - reset:
            ///   - used:
            public init(
                limit: Swift.Int,
                remaining: Swift.Int,
                reset: Swift.Int,
                used: Swift.Int
            ) {
                self.limit = limit
                self.remaining = remaining
                self.reset = reset
                self.used = used
            }
            public enum CodingKeys: String, CodingKey {
                case limit
                case remaining
                case reset
                case used
            }
        }
        /// Rate Limit Overview
        ///
        /// - Remark: Generated from `#/components/schemas/rate-limit-overview`.
        public struct rate_hyphen_limit_hyphen_overview: Codable, Hashable, Sendable {
            /// - Remark: Generated from `#/components/schemas/rate-limit-overview/resources`.
            public struct resourcesPayload: Codable, Hashable, Sendable {
                /// - Remark: Generated from `#/components/schemas/rate-limit-overview/resources/core`.
                public var core: Components.Schemas.rate_hyphen_limit
                /// - Remark: Generated from `#/components/schemas/rate-limit-overview/resources/graphql`.
                public var graphql: Components.Schemas.rate_hyphen_limit?
                /// - Remark: Generated from `#/components/schemas/rate-limit-overview/resources/search`.
                public var search: Components.Schemas.rate_hyphen_limit
                /// - Remark: Generated from `#/components/schemas/rate-limit-overview/resources/code_search`.
                public var code_search: Components.Schemas.rate_hyphen_limit?
                /// - Remark: Generated from `#/components/schemas/rate-limit-overview/resources/source_import`.
                public var source_import: Components.Schemas.rate_hyphen_limit?
                /// - Remark: Generated from `#/components/schemas/rate-limit-overview/resources/integration_manifest`.
                public var integration_manifest: Components.Schemas.rate_hyphen_limit?
                /// - Remark: Generated from `#/components/schemas/rate-limit-overview/resources/code_scanning_upload`.
                public var code_scanning_upload: Components.Schemas.rate_hyphen_limit?
                /// - Remark: Generated from `#/components/schemas/rate-limit-overview/resources/actions_runner_registration`.
                public var actions_runner_registration: Components.Schemas.rate_hyphen_limit?
                /// - Remark: Generated from `#/components/schemas/rate-limit-overview/resources/scim`.
                public var scim: Components.Schemas.rate_hyphen_limit?
                /// - Remark: Generated from `#/components/schemas/rate-limit-overview/resources/dependency_snapshots`.
                public var dependency_snapshots: Components.Schemas.rate_hyphen_limit?
                /// - Remark: Generated from `#/components/schemas/rate-limit-overview/resources/code_scanning_autofix`.
                public var code_scanning_autofix: Components.Schemas.rate_hyphen_limit?
                /// Creates a new `resourcesPayload`.
                ///
                /// - Parameters:
                ///   - core:
                ///   - graphql:
                ///   - search:
                ///   - code_search:
                ///   - source_import:
                ///   - integration_manifest:
                ///   - code_scanning_upload:
                ///   - actions_runner_registration:
                ///   - scim:
                ///   - dependency_snapshots:
                ///   - code_scanning_autofix:
                public init(
                    core: Components.Schemas.rate_hyphen_limit,
                    graphql: Components.Schemas.rate_hyphen_limit? = nil,
                    search: Components.Schemas.rate_hyphen_limit,
                    code_search: Components.Schemas.rate_hyphen_limit? = nil,
                    source_import: Components.Schemas.rate_hyphen_limit? = nil,
                    integration_manifest: Components.Schemas.rate_hyphen_limit? = nil,
                    code_scanning_upload: Components.Schemas.rate_hyphen_limit? = nil,
                    actions_runner_registration: Components.Schemas.rate_hyphen_limit? = nil,
                    scim: Components.Schemas.rate_hyphen_limit? = nil,
                    dependency_snapshots: Components.Schemas.rate_hyphen_limit? = nil,
                    code_scanning_autofix: Components.Schemas.rate_hyphen_limit? = nil
                ) {
                    self.core = core
                    self.graphql = graphql
                    self.search = search
                    self.code_search = code_search
                    self.source_import = source_import
                    self.integration_manifest = integration_manifest
                    self.code_scanning_upload = code_scanning_upload
                    self.actions_runner_registration = actions_runner_registration
                    self.scim = scim
                    self.dependency_snapshots = dependency_snapshots
                    self.code_scanning_autofix = code_scanning_autofix
                }
                public enum CodingKeys: String, CodingKey {
                    case core
                    case graphql
                    case search
                    case code_search
                    case source_import
                    case integration_manifest
                    case code_scanning_upload
                    case actions_runner_registration
                    case scim
                    case dependency_snapshots
                    case code_scanning_autofix
                }
            }
            /// - Remark: Generated from `#/components/schemas/rate-limit-overview/resources`.
            public var resources: Components.Schemas.rate_hyphen_limit_hyphen_overview.resourcesPayload
            /// - Remark: Generated from `#/components/schemas/rate-limit-overview/rate`.
            public var rate: Components.Schemas.rate_hyphen_limit
            /// Creates a new `rate_hyphen_limit_hyphen_overview`.
            ///
            /// - Parameters:
            ///   - resources:
            ///   - rate:
            public init(
                resources: Components.Schemas.rate_hyphen_limit_hyphen_overview.resourcesPayload,
                rate: Components.Schemas.rate_hyphen_limit
            ) {
                self.resources = resources
                self.rate = rate
            }
            public enum CodingKeys: String, CodingKey {
                case resources
                case rate
            }
        }
    }
    /// Types generated from the `#/components/parameters` section of the OpenAPI document.
    public enum Parameters {}
    /// Types generated from the `#/components/requestBodies` section of the OpenAPI document.
    public enum RequestBodies {}
    /// Types generated from the `#/components/responses` section of the OpenAPI document.
    public enum Responses {
        public struct not_found: Sendable, Hashable {
            /// - Remark: Generated from `#/components/responses/not_found/content`.
            @frozen public enum Body: Sendable, Hashable {
                /// - Remark: Generated from `#/components/responses/not_found/content/application\/json`.
                case json(Components.Schemas.basic_hyphen_error)
                /// The associated value of the enum case if `self` is `.json`.
                ///
                /// - Throws: An error if `self` is not `.json`.
                /// - SeeAlso: `.json`.
                public var json: Components.Schemas.basic_hyphen_error {
                    get throws {
                        switch self {
                        case let .json(body):
                            return body
                        }
                    }
                }
            }
            /// Received HTTP response body
            public var body: Components.Responses.not_found.Body
            /// Creates a new `not_found`.
            ///
            /// - Parameters:
            ///   - body: Received HTTP response body
            public init(body: Components.Responses.not_found.Body) {
                self.body = body
            }
        }
        public struct not_modified: Sendable, Hashable {
            /// Creates a new `not_modified`.
            public init() {}
        }
    }
    /// Types generated from the `#/components/headers` section of the OpenAPI document.
    public enum Headers {
        /// - Remark: Generated from `#/components/headers/x-rate-limit-limit`.
        public typealias x_hyphen_rate_hyphen_limit_hyphen_limit = Swift.Int
        /// - Remark: Generated from `#/components/headers/x-rate-limit-remaining`.
        public typealias x_hyphen_rate_hyphen_limit_hyphen_remaining = Swift.Int
        /// - Remark: Generated from `#/components/headers/x-rate-limit-reset`.
        public typealias x_hyphen_rate_hyphen_limit_hyphen_reset = Swift.Int
    }
}

/// API operations, with input and output types, generated from `#/paths` in the OpenAPI document.
public enum Operations {
    /// Get rate limit status for the authenticated user
    ///
    /// > [!NOTE]
    /// > Accessing this endpoint does not count against your REST API rate limit.
    ///
    /// Some categories of endpoints have custom rate limits that are separate from the rate limit governing the other REST API endpoints. For this reason, the API response categorizes your rate limit. Under `resources`, you'll see objects relating to different categories:
    /// * The `core` object provides your rate limit status for all non-search-related resources in the REST API.
    /// * The `search` object provides your rate limit status for the REST API for searching (excluding code searches). For more information, see "[Search](https://docs.github.com/rest/search/search)."
    /// * The `code_search` object provides your rate limit status for the REST API for searching code. For more information, see "[Search code](https://docs.github.com/rest/search/search#search-code)."
    /// * The `graphql` object provides your rate limit status for the GraphQL API. For more information, see "[Resource limitations](https://docs.github.com/graphql/overview/resource-limitations#rate-limit)."
    /// * The `integration_manifest` object provides your rate limit status for the `POST /app-manifests/{code}/conversions` operation. For more information, see "[Creating a GitHub App from a manifest](https://docs.github.com/apps/creating-github-apps/setting-up-a-github-app/creating-a-github-app-from-a-manifest#3-you-exchange-the-temporary-code-to-retrieve-the-app-configuration)."
    /// * The `dependency_snapshots` object provides your rate limit status for submitting snapshots to the dependency graph. For more information, see "[Dependency graph](https://docs.github.com/rest/dependency-graph)."
    /// * The `code_scanning_upload` object provides your rate limit status for uploading SARIF results to code scanning. For more information, see "[Uploading a SARIF file to GitHub](https://docs.github.com/code-security/code-scanning/integrating-with-code-scanning/uploading-a-sarif-file-to-github)."
    /// * The `actions_runner_registration` object provides your rate limit status for registering self-hosted runners in GitHub Actions. For more information, see "[Self-hosted runners](https://docs.github.com/rest/actions/self-hosted-runners)."
    /// * The `source_import` object is no longer in use for any API endpoints, and it will be removed in the next API version. For more information about API versions, see "[API Versions](https://docs.github.com/rest/about-the-rest-api/api-versions)."
    ///
    /// > [!NOTE]
    /// > The `rate` object is closing down. If you're writing new API client code or updating existing code, you should use the `core` object instead of the `rate` object. The `core` object contains the same information that is present in the `rate` object.
    ///
    /// - Remark: HTTP `GET /rate_limit`.
    /// - Remark: Generated from `#/paths//rate_limit/get(rate-limit/get)`.
    public enum rate_hyphen_limit_sol_get {
        public static let id: Swift.String = "rate-limit/get"
        public struct Input: Sendable, Hashable {
            /// - Remark: Generated from `#/paths/rate_limit/GET/header`.
            public struct Headers: Sendable, Hashable {
                public var accept: [OpenAPIRuntime.AcceptHeaderContentType<Operations.rate_hyphen_limit_sol_get.AcceptableContentType>]
                /// Creates a new `Headers`.
                ///
                /// - Parameters:
                ///   - accept:
                public init(accept: [OpenAPIRuntime.AcceptHeaderContentType<Operations.rate_hyphen_limit_sol_get.AcceptableContentType>] = .defaultValues()) {
                    self.accept = accept
                }
            }
            public var headers: Operations.rate_hyphen_limit_sol_get.Input.Headers
            /// Creates a new `Input`.
            ///
            /// - Parameters:
            ///   - headers:
            public init(headers: Operations.rate_hyphen_limit_sol_get.Input.Headers = .init()) {
                self.headers = headers
            }
        }
        @frozen public enum Output: Sendable, Hashable {
            public struct Ok: Sendable, Hashable {
                /// - Remark: Generated from `#/paths/rate_limit/GET/responses/200/headers`.
                public struct Headers: Sendable, Hashable {
                    /// - Remark: Generated from `#/paths/rate_limit/GET/responses/200/headers/X-RateLimit-Limit`.
                    public var X_hyphen_RateLimit_hyphen_Limit: Components.Headers.x_hyphen_rate_hyphen_limit_hyphen_limit?
                    /// - Remark: Generated from `#/paths/rate_limit/GET/responses/200/headers/X-RateLimit-Remaining`.
                    public var X_hyphen_RateLimit_hyphen_Remaining: Components.Headers.x_hyphen_rate_hyphen_limit_hyphen_remaining?
                    /// - Remark: Generated from `#/paths/rate_limit/GET/responses/200/headers/X-RateLimit-Reset`.
                    public var X_hyphen_RateLimit_hyphen_Reset: Components.Headers.x_hyphen_rate_hyphen_limit_hyphen_reset?
                    /// Creates a new `Headers`.
                    ///
                    /// - Parameters:
                    ///   - X_hyphen_RateLimit_hyphen_Limit:
                    ///   - X_hyphen_RateLimit_hyphen_Remaining:
                    ///   - X_hyphen_RateLimit_hyphen_Reset:
                    public init(
                        X_hyphen_RateLimit_hyphen_Limit: Components.Headers.x_hyphen_rate_hyphen_limit_hyphen_limit? = nil,
                        X_hyphen_RateLimit_hyphen_Remaining: Components.Headers.x_hyphen_rate_hyphen_limit_hyphen_remaining? = nil,
                        X_hyphen_RateLimit_hyphen_Reset: Components.Headers.x_hyphen_rate_hyphen_limit_hyphen_reset? = nil
                    ) {
                        self.X_hyphen_RateLimit_hyphen_Limit = X_hyphen_RateLimit_hyphen_Limit
                        self.X_hyphen_RateLimit_hyphen_Remaining = X_hyphen_RateLimit_hyphen_Remaining
                        self.X_hyphen_RateLimit_hyphen_Reset = X_hyphen_RateLimit_hyphen_Reset
                    }
                }
                /// Received HTTP response headers
                public var headers: Operations.rate_hyphen_limit_sol_get.Output.Ok.Headers
                /// - Remark: Generated from `#/paths/rate_limit/GET/responses/200/content`.
                @frozen public enum Body: Sendable, Hashable {
                    /// - Remark: Generated from `#/paths/rate_limit/GET/responses/200/content/application\/json`.
                    case json(Components.Schemas.rate_hyphen_limit_hyphen_overview)
                    /// The associated value of the enum case if `self` is `.json`.
                    ///
                    /// - Throws: An error if `self` is not `.json`.
                    /// - SeeAlso: `.json`.
                    public var json: Components.Schemas.rate_hyphen_limit_hyphen_overview {
                        get throws {
                            switch self {
                            case let .json(body):
                                return body
                            }
                        }
                    }
                }
                /// Received HTTP response body
                public var body: Operations.rate_hyphen_limit_sol_get.Output.Ok.Body
                /// Creates a new `Ok`.
                ///
                /// - Parameters:
                ///   - headers: Received HTTP response headers
                ///   - body: Received HTTP response body
                public init(
                    headers: Operations.rate_hyphen_limit_sol_get.Output.Ok.Headers = .init(),
                    body: Operations.rate_hyphen_limit_sol_get.Output.Ok.Body
                ) {
                    self.headers = headers
                    self.body = body
                }
            }
            /// Response
            ///
            /// - Remark: Generated from `#/paths//rate_limit/get(rate-limit/get)/responses/200`.
            ///
            /// HTTP response code: `200 ok`.
            case ok(Operations.rate_hyphen_limit_sol_get.Output.Ok)
            /// The associated value of the enum case if `self` is `.ok`.
            ///
            /// - Throws: An error if `self` is not `.ok`.
            /// - SeeAlso: `.ok`.
            public var ok: Operations.rate_hyphen_limit_sol_get.Output.Ok {
                get throws {
                    switch self {
                    case let .ok(response):
                        return response
                    default:
                        try throwUnexpectedResponseStatus(
                            expectedStatus: "ok",
                            response: self
                        )
                    }
                }
            }
            /// Not modified
            ///
            /// - Remark: Generated from `#/paths//rate_limit/get(rate-limit/get)/responses/304`.
            ///
            /// HTTP response code: `304 notModified`.
            case notModified(Components.Responses.not_modified)
            /// The associated value of the enum case if `self` is `.notModified`.
            ///
            /// - Throws: An error if `self` is not `.notModified`.
            /// - SeeAlso: `.notModified`.
            public var notModified: Components.Responses.not_modified {
                get throws {
                    switch self {
                    case let .notModified(response):
                        return response
                    default:
                        try throwUnexpectedResponseStatus(
                            expectedStatus: "notModified",
                            response: self
                        )
                    }
                }
            }
            /// Resource not found
            ///
            /// - Remark: Generated from `#/paths//rate_limit/get(rate-limit/get)/responses/404`.
            ///
            /// HTTP response code: `404 notFound`.
            case notFound(Components.Responses.not_found)
            /// The associated value of the enum case if `self` is `.notFound`.
            ///
            /// - Throws: An error if `self` is not `.notFound`.
            /// - SeeAlso: `.notFound`.
            public var notFound: Components.Responses.not_found {
                get throws {
                    switch self {
                    case let .notFound(response):
                        return response
                    default:
                        try throwUnexpectedResponseStatus(
                            expectedStatus: "notFound",
                            response: self
                        )
                    }
                }
            }
            /// Undocumented response.
            ///
            /// A response with a code that is not documented in the OpenAPI document.
            case undocumented(statusCode: Swift.Int, OpenAPIRuntime.UndocumentedPayload)
        }
        @frozen public enum AcceptableContentType: AcceptableProtocol {
            case json
            case other(Swift.String)
            public init?(rawValue: Swift.String) {
                switch rawValue.lowercased() {
                case "application/json":
                    self = .json
                default:
                    self = .other(rawValue)
                }
            }
            public var rawValue: Swift.String {
                switch self {
                case let .other(string):
                    return string
                case .json:
                    return "application/json"
                }
            }
            public static var allCases: [Self] {
                [
                    .json
                ]
            }
        }
    }
}
