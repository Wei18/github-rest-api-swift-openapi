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
    /// Get all gitignore templates
    ///
    /// List all templates available to pass as an option when [creating a repository](https://docs.github.com/rest/repos/repos#create-a-repository-for-the-authenticated-user).
    ///
    /// - Remark: HTTP `GET /gitignore/templates`.
    /// - Remark: Generated from `#/paths//gitignore/templates/get(gitignore/get-all-templates)`.
    public func gitignore_sol_get_hyphen_all_hyphen_templates(_ input: Operations.gitignore_sol_get_hyphen_all_hyphen_templates.Input) async throws -> Operations.gitignore_sol_get_hyphen_all_hyphen_templates.Output {
        try await client.send(
            input: input,
            forOperation: Operations.gitignore_sol_get_hyphen_all_hyphen_templates.id,
            serializer: { input in
                let path = try converter.renderedPath(
                    template: "/gitignore/templates",
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
                    let contentType = converter.extractContentTypeIfPresent(in: response.headerFields)
                    let body: Operations.gitignore_sol_get_hyphen_all_hyphen_templates.Output.Ok.Body
                    let chosenContentType = try converter.bestContentType(
                        received: contentType,
                        options: [
                            "application/json"
                        ]
                    )
                    switch chosenContentType {
                    case "application/json":
                        body = try await converter.getResponseBodyAsJSON(
                            [Swift.String].self,
                            from: responseBody,
                            transforming: { value in
                                .json(value)
                            }
                        )
                    default:
                        preconditionFailure("bestContentType chose an invalid content type.")
                    }
                    return .ok(.init(body: body))
                case 304:
                    return .notModified(.init())
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
    /// Get a gitignore template
    ///
    /// The API also allows fetching the source of a single template.
    /// Use the raw [media type](https://docs.github.com/rest/overview/media-types/) to get the raw contents.
    ///
    /// - Remark: HTTP `GET /gitignore/templates/{name}`.
    /// - Remark: Generated from `#/paths//gitignore/templates/{name}/get(gitignore/get-template)`.
    public func gitignore_sol_get_hyphen_template(_ input: Operations.gitignore_sol_get_hyphen_template.Input) async throws -> Operations.gitignore_sol_get_hyphen_template.Output {
        try await client.send(
            input: input,
            forOperation: Operations.gitignore_sol_get_hyphen_template.id,
            serializer: { input in
                let path = try converter.renderedPath(
                    template: "/gitignore/templates/{}",
                    parameters: [
                        input.path.name
                    ]
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
                    let contentType = converter.extractContentTypeIfPresent(in: response.headerFields)
                    let body: Operations.gitignore_sol_get_hyphen_template.Output.Ok.Body
                    let chosenContentType = try converter.bestContentType(
                        received: contentType,
                        options: [
                            "application/json"
                        ]
                    )
                    switch chosenContentType {
                    case "application/json":
                        body = try await converter.getResponseBodyAsJSON(
                            Components.Schemas.gitignore_hyphen_template.self,
                            from: responseBody,
                            transforming: { value in
                                .json(value)
                            }
                        )
                    default:
                        preconditionFailure("bestContentType chose an invalid content type.")
                    }
                    return .ok(.init(body: body))
                case 304:
                    return .notModified(.init())
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
