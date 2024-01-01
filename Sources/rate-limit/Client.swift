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
import HTTPTypes
/// GitHub's v3 REST API.
public struct Client: APIProtocol {
    /// The underlying HTTP client.
    private let client: UniversalClient
    /// Creates a new client.
    /// - Parameters:
    ///   - serverURL: The server URL that the client connects to. Any server
    ///   URLs defined in the OpenAPI document are available as static methods
    ///   on the ``Servers`` type.
    ///   - configuration: A set of configuration values for the client.
    ///   - transport: A transport that performs HTTP operations.
    ///   - middlewares: A list of middlewares to call before the transport.
    public init(
        serverURL: Foundation.URL,
        configuration: Configuration = .init(),
        transport: any ClientTransport,
        middlewares: [any ClientMiddleware] = []
    ) {
        self.client = .init(
            serverURL: serverURL,
            configuration: configuration,
            transport: transport,
            middlewares: middlewares
        )
    }
    private var converter: Converter {
        client.converter
    }
    /// Get rate limit status for the authenticated user
    ///
    /// **Note:** Accessing this endpoint does not count against your REST API rate limit.
    ///
    /// Some categories of endpoints have custom rate limits that are separate from the rate limit governing the other REST API endpoints. For this reason, the API response categorizes your rate limit. Under `resources`, you'll see objects relating to different categories:
    /// * The `core` object provides your rate limit status for all non-search-related resources in the REST API.
    /// * The `search` object provides your rate limit status for the REST API for searching (excluding code searches). For more information, see "[Search](https://docs.github.com/rest/search)."
    /// * The `code_search` object provides your rate limit status for the REST API for searching code. For more information, see "[Search code](https://docs.github.com/rest/search/search#search-code)."
    /// * The `graphql` object provides your rate limit status for the GraphQL API. For more information, see "[Resource limitations](https://docs.github.com/graphql/overview/resource-limitations#rate-limit)."
    /// * The `integration_manifest` object provides your rate limit status for the `POST /app-manifests/{code}/conversions` operation. For more information, see "[Creating a GitHub App from a manifest](https://docs.github.com/apps/creating-github-apps/setting-up-a-github-app/creating-a-github-app-from-a-manifest#3-you-exchange-the-temporary-code-to-retrieve-the-app-configuration)."
    /// * The `dependency_snapshots` object provides your rate limit status for submitting snapshots to the dependency graph. For more information, see "[Dependency graph](https://docs.github.com/rest/dependency-graph)."
    /// * The `code_scanning_upload` object provides your rate limit status for uploading SARIF results to code scanning. For more information, see "[Uploading a SARIF file to GitHub](https://docs.github.com/code-security/code-scanning/integrating-with-code-scanning/uploading-a-sarif-file-to-github)."
    /// * The `actions_runner_registration` object provides your rate limit status for registering self-hosted runners in GitHub Actions. For more information, see "[Self-hosted runners](https://docs.github.com/rest/actions/self-hosted-runners)."
    /// * The `source_import` object is no longer in use for any API endpoints, and it will be removed in the next API version. For more information about API versions, see "[API Versions](https://docs.github.com/rest/overview/api-versions)."
    ///
    /// **Note:** The `rate` object is deprecated. If you're writing new API client code or updating existing code, you should use the `core` object instead of the `rate` object. The `core` object contains the same information that is present in the `rate` object.
    ///
    /// - Remark: HTTP `GET /rate_limit`.
    /// - Remark: Generated from `#/paths//rate_limit/get(rate-limit/get)`.
    public func rate_hyphen_limit_sol_get(_ input: Operations.rate_hyphen_limit_sol_get.Input) async throws -> Operations.rate_hyphen_limit_sol_get.Output {
        try await client.send(
            input: input,
            forOperation: Operations.rate_hyphen_limit_sol_get.id,
            serializer: { input in
                let path = try converter.renderedPath(
                    template: "/rate_limit",
                    parameters: []
                )
                var request: HTTPTypes.HTTPRequest = .init(
                    soar_path: path,
                    method: .get
                )
                suppressMutabilityWarning(&request)
                converter.setAcceptHeader(
                    in: &request.headerFields,
                    contentTypes: input.headers.accept
                )
                return (request, nil)
            },
            deserializer: { response, responseBody in
                switch response.status.code {
                case 200:
                    let headers: Operations.rate_hyphen_limit_sol_get.Output.Ok.Headers = .init(
                        X_hyphen_RateLimit_hyphen_Limit: try converter.getOptionalHeaderFieldAsURI(
                            in: response.headerFields,
                            name: "X-RateLimit-Limit",
                            as: Components.Headers.x_hyphen_rate_hyphen_limit_hyphen_limit.self
                        ),
                        X_hyphen_RateLimit_hyphen_Remaining: try converter.getOptionalHeaderFieldAsURI(
                            in: response.headerFields,
                            name: "X-RateLimit-Remaining",
                            as: Components.Headers.x_hyphen_rate_hyphen_limit_hyphen_remaining.self
                        ),
                        X_hyphen_RateLimit_hyphen_Reset: try converter.getOptionalHeaderFieldAsURI(
                            in: response.headerFields,
                            name: "X-RateLimit-Reset",
                            as: Components.Headers.x_hyphen_rate_hyphen_limit_hyphen_reset.self
                        )
                    )
                    let contentType = converter.extractContentTypeIfPresent(in: response.headerFields)
                    let body: Operations.rate_hyphen_limit_sol_get.Output.Ok.Body
                    let chosenContentType = try converter.bestContentType(
                        received: contentType,
                        options: [
                            "application/json"
                        ]
                    )
                    switch chosenContentType {
                    case "application/json":
                        body = try await converter.getResponseBodyAsJSON(
                            Components.Schemas.rate_hyphen_limit_hyphen_overview.self,
                            from: responseBody,
                            transforming: { value in
                                .json(value)
                            }
                        )
                    default:
                        preconditionFailure("bestContentType chose an invalid content type.")
                    }
                    return .ok(.init(
                        headers: headers,
                        body: body
                    ))
                case 304:
                    return .notModified(.init())
                case 404:
                    let contentType = converter.extractContentTypeIfPresent(in: response.headerFields)
                    let body: Components.Responses.not_found.Body
                    let chosenContentType = try converter.bestContentType(
                        received: contentType,
                        options: [
                            "application/json"
                        ]
                    )
                    switch chosenContentType {
                    case "application/json":
                        body = try await converter.getResponseBodyAsJSON(
                            Components.Schemas.basic_hyphen_error.self,
                            from: responseBody,
                            transforming: { value in
                                .json(value)
                            }
                        )
                    default:
                        preconditionFailure("bestContentType chose an invalid content type.")
                    }
                    return .notFound(.init(body: body))
                default:
                    return .undocumented(
                        statusCode: response.status.code,
                        .init(
                            headerFields: response.headerFields,
                            body: responseBody
                        )
                    )
                }
            }
        )
    }
}