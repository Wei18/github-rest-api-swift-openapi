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
    /// Get interaction restrictions for an organization
    ///
    /// Shows which type of GitHub user can interact with this organization and when the restriction expires. If there is no restrictions, you will see an empty response.
    ///
    /// - Remark: HTTP `GET /orgs/{org}/interaction-limits`.
    /// - Remark: Generated from `#/paths//orgs/{org}/interaction-limits/get(interactions/get-restrictions-for-org)`.
    public func interactions_sol_get_hyphen_restrictions_hyphen_for_hyphen_org(_ input: Operations.interactions_sol_get_hyphen_restrictions_hyphen_for_hyphen_org.Input) async throws -> Operations.interactions_sol_get_hyphen_restrictions_hyphen_for_hyphen_org.Output {
        try await client.send(
            input: input,
            forOperation: Operations.interactions_sol_get_hyphen_restrictions_hyphen_for_hyphen_org.id,
            serializer: { input in
                let path = try converter.renderedPath(
                    template: "/orgs/{}/interaction-limits",
                    parameters: [
                        input.path.org
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
                    let body: Operations.interactions_sol_get_hyphen_restrictions_hyphen_for_hyphen_org.Output.Ok.Body
                    let chosenContentType = try converter.bestContentType(
                        received: contentType,
                        options: [
                            "application/json"
                        ]
                    )
                    switch chosenContentType {
                    case "application/json":
                        body = try await converter.getResponseBodyAsJSON(
                            Operations.interactions_sol_get_hyphen_restrictions_hyphen_for_hyphen_org.Output.Ok.Body.jsonPayload.self,
                            from: responseBody,
                            transforming: { value in
                                .json(value)
                            }
                        )
                    default:
                        preconditionFailure("bestContentType chose an invalid content type.")
                    }
                    return .ok(.init(body: body))
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
    /// Set interaction restrictions for an organization
    ///
    /// Temporarily restricts interactions to a certain type of GitHub user in any public repository in the given organization. You must be an organization owner to set these restrictions. Setting the interaction limit at the organization level will overwrite any interaction limits that are set for individual repositories owned by the organization.
    ///
    /// - Remark: HTTP `PUT /orgs/{org}/interaction-limits`.
    /// - Remark: Generated from `#/paths//orgs/{org}/interaction-limits/put(interactions/set-restrictions-for-org)`.
    public func interactions_sol_set_hyphen_restrictions_hyphen_for_hyphen_org(_ input: Operations.interactions_sol_set_hyphen_restrictions_hyphen_for_hyphen_org.Input) async throws -> Operations.interactions_sol_set_hyphen_restrictions_hyphen_for_hyphen_org.Output {
        try await client.send(
            input: input,
            forOperation: Operations.interactions_sol_set_hyphen_restrictions_hyphen_for_hyphen_org.id,
            serializer: { input in
                let path = try converter.renderedPath(
                    template: "/orgs/{}/interaction-limits",
                    parameters: [
                        input.path.org
                    ]
                )
                var request: HTTPTypes.HTTPRequest = .init(
                    soar_path: path,
                    method: .put
                )
                suppressMutabilityWarning(&request)
                converter.setAcceptHeader(
                    in: &request.headerFields,
                    contentTypes: input.headers.accept
                )
                let body: OpenAPIRuntime.HTTPBody?
                switch input.body {
                case let .json(value):
                    body = try converter.setRequiredRequestBodyAsJSON(
                        value,
                        headerFields: &request.headerFields,
                        contentType: "application/json; charset=utf-8"
                    )
                }
                return (request, body)
            },
            deserializer: { response, responseBody in
                switch response.status.code {
                case 200:
                    let contentType = converter.extractContentTypeIfPresent(in: response.headerFields)
                    let body: Operations.interactions_sol_set_hyphen_restrictions_hyphen_for_hyphen_org.Output.Ok.Body
                    let chosenContentType = try converter.bestContentType(
                        received: contentType,
                        options: [
                            "application/json"
                        ]
                    )
                    switch chosenContentType {
                    case "application/json":
                        body = try await converter.getResponseBodyAsJSON(
                            Components.Schemas.interaction_hyphen_limit_hyphen_response.self,
                            from: responseBody,
                            transforming: { value in
                                .json(value)
                            }
                        )
                    default:
                        preconditionFailure("bestContentType chose an invalid content type.")
                    }
                    return .ok(.init(body: body))
                case 422:
                    let contentType = converter.extractContentTypeIfPresent(in: response.headerFields)
                    let body: Components.Responses.validation_failed.Body
                    let chosenContentType = try converter.bestContentType(
                        received: contentType,
                        options: [
                            "application/json"
                        ]
                    )
                    switch chosenContentType {
                    case "application/json":
                        body = try await converter.getResponseBodyAsJSON(
                            Components.Schemas.validation_hyphen_error.self,
                            from: responseBody,
                            transforming: { value in
                                .json(value)
                            }
                        )
                    default:
                        preconditionFailure("bestContentType chose an invalid content type.")
                    }
                    return .unprocessableContent(.init(body: body))
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
    /// Remove interaction restrictions for an organization
    ///
    /// Removes all interaction restrictions from public repositories in the given organization. You must be an organization owner to remove restrictions.
    ///
    /// - Remark: HTTP `DELETE /orgs/{org}/interaction-limits`.
    /// - Remark: Generated from `#/paths//orgs/{org}/interaction-limits/delete(interactions/remove-restrictions-for-org)`.
    public func interactions_sol_remove_hyphen_restrictions_hyphen_for_hyphen_org(_ input: Operations.interactions_sol_remove_hyphen_restrictions_hyphen_for_hyphen_org.Input) async throws -> Operations.interactions_sol_remove_hyphen_restrictions_hyphen_for_hyphen_org.Output {
        try await client.send(
            input: input,
            forOperation: Operations.interactions_sol_remove_hyphen_restrictions_hyphen_for_hyphen_org.id,
            serializer: { input in
                let path = try converter.renderedPath(
                    template: "/orgs/{}/interaction-limits",
                    parameters: [
                        input.path.org
                    ]
                )
                var request: HTTPTypes.HTTPRequest = .init(
                    soar_path: path,
                    method: .delete
                )
                suppressMutabilityWarning(&request)
                return (request, nil)
            },
            deserializer: { response, responseBody in
                switch response.status.code {
                case 204:
                    return .noContent(.init())
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
    /// Get interaction restrictions for a repository
    ///
    /// Shows which type of GitHub user can interact with this repository and when the restriction expires. If there are no restrictions, you will see an empty response.
    ///
    /// - Remark: HTTP `GET /repos/{owner}/{repo}/interaction-limits`.
    /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/interaction-limits/get(interactions/get-restrictions-for-repo)`.
    public func interactions_sol_get_hyphen_restrictions_hyphen_for_hyphen_repo(_ input: Operations.interactions_sol_get_hyphen_restrictions_hyphen_for_hyphen_repo.Input) async throws -> Operations.interactions_sol_get_hyphen_restrictions_hyphen_for_hyphen_repo.Output {
        try await client.send(
            input: input,
            forOperation: Operations.interactions_sol_get_hyphen_restrictions_hyphen_for_hyphen_repo.id,
            serializer: { input in
                let path = try converter.renderedPath(
                    template: "/repos/{}/{}/interaction-limits",
                    parameters: [
                        input.path.owner,
                        input.path.repo
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
                    let body: Operations.interactions_sol_get_hyphen_restrictions_hyphen_for_hyphen_repo.Output.Ok.Body
                    let chosenContentType = try converter.bestContentType(
                        received: contentType,
                        options: [
                            "application/json"
                        ]
                    )
                    switch chosenContentType {
                    case "application/json":
                        body = try await converter.getResponseBodyAsJSON(
                            Operations.interactions_sol_get_hyphen_restrictions_hyphen_for_hyphen_repo.Output.Ok.Body.jsonPayload.self,
                            from: responseBody,
                            transforming: { value in
                                .json(value)
                            }
                        )
                    default:
                        preconditionFailure("bestContentType chose an invalid content type.")
                    }
                    return .ok(.init(body: body))
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
    /// Set interaction restrictions for a repository
    ///
    /// Temporarily restricts interactions to a certain type of GitHub user within the given repository. You must have owner or admin access to set these restrictions. If an interaction limit is set for the user or organization that owns this repository, you will receive a `409 Conflict` response and will not be able to use this endpoint to change the interaction limit for a single repository.
    ///
    /// - Remark: HTTP `PUT /repos/{owner}/{repo}/interaction-limits`.
    /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/interaction-limits/put(interactions/set-restrictions-for-repo)`.
    public func interactions_sol_set_hyphen_restrictions_hyphen_for_hyphen_repo(_ input: Operations.interactions_sol_set_hyphen_restrictions_hyphen_for_hyphen_repo.Input) async throws -> Operations.interactions_sol_set_hyphen_restrictions_hyphen_for_hyphen_repo.Output {
        try await client.send(
            input: input,
            forOperation: Operations.interactions_sol_set_hyphen_restrictions_hyphen_for_hyphen_repo.id,
            serializer: { input in
                let path = try converter.renderedPath(
                    template: "/repos/{}/{}/interaction-limits",
                    parameters: [
                        input.path.owner,
                        input.path.repo
                    ]
                )
                var request: HTTPTypes.HTTPRequest = .init(
                    soar_path: path,
                    method: .put
                )
                suppressMutabilityWarning(&request)
                converter.setAcceptHeader(
                    in: &request.headerFields,
                    contentTypes: input.headers.accept
                )
                let body: OpenAPIRuntime.HTTPBody?
                switch input.body {
                case let .json(value):
                    body = try converter.setRequiredRequestBodyAsJSON(
                        value,
                        headerFields: &request.headerFields,
                        contentType: "application/json; charset=utf-8"
                    )
                }
                return (request, body)
            },
            deserializer: { response, responseBody in
                switch response.status.code {
                case 200:
                    let contentType = converter.extractContentTypeIfPresent(in: response.headerFields)
                    let body: Operations.interactions_sol_set_hyphen_restrictions_hyphen_for_hyphen_repo.Output.Ok.Body
                    let chosenContentType = try converter.bestContentType(
                        received: contentType,
                        options: [
                            "application/json"
                        ]
                    )
                    switch chosenContentType {
                    case "application/json":
                        body = try await converter.getResponseBodyAsJSON(
                            Components.Schemas.interaction_hyphen_limit_hyphen_response.self,
                            from: responseBody,
                            transforming: { value in
                                .json(value)
                            }
                        )
                    default:
                        preconditionFailure("bestContentType chose an invalid content type.")
                    }
                    return .ok(.init(body: body))
                case 409:
                    return .conflict(.init())
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
    /// Remove interaction restrictions for a repository
    ///
    /// Removes all interaction restrictions from the given repository. You must have owner or admin access to remove restrictions. If the interaction limit is set for the user or organization that owns this repository, you will receive a `409 Conflict` response and will not be able to use this endpoint to change the interaction limit for a single repository.
    ///
    /// - Remark: HTTP `DELETE /repos/{owner}/{repo}/interaction-limits`.
    /// - Remark: Generated from `#/paths//repos/{owner}/{repo}/interaction-limits/delete(interactions/remove-restrictions-for-repo)`.
    public func interactions_sol_remove_hyphen_restrictions_hyphen_for_hyphen_repo(_ input: Operations.interactions_sol_remove_hyphen_restrictions_hyphen_for_hyphen_repo.Input) async throws -> Operations.interactions_sol_remove_hyphen_restrictions_hyphen_for_hyphen_repo.Output {
        try await client.send(
            input: input,
            forOperation: Operations.interactions_sol_remove_hyphen_restrictions_hyphen_for_hyphen_repo.id,
            serializer: { input in
                let path = try converter.renderedPath(
                    template: "/repos/{}/{}/interaction-limits",
                    parameters: [
                        input.path.owner,
                        input.path.repo
                    ]
                )
                var request: HTTPTypes.HTTPRequest = .init(
                    soar_path: path,
                    method: .delete
                )
                suppressMutabilityWarning(&request)
                return (request, nil)
            },
            deserializer: { response, responseBody in
                switch response.status.code {
                case 204:
                    return .noContent(.init())
                case 409:
                    return .conflict(.init())
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
    /// Get interaction restrictions for your public repositories
    ///
    /// Shows which type of GitHub user can interact with your public repositories and when the restriction expires.
    ///
    /// - Remark: HTTP `GET /user/interaction-limits`.
    /// - Remark: Generated from `#/paths//user/interaction-limits/get(interactions/get-restrictions-for-authenticated-user)`.
    public func interactions_sol_get_hyphen_restrictions_hyphen_for_hyphen_authenticated_hyphen_user(_ input: Operations.interactions_sol_get_hyphen_restrictions_hyphen_for_hyphen_authenticated_hyphen_user.Input) async throws -> Operations.interactions_sol_get_hyphen_restrictions_hyphen_for_hyphen_authenticated_hyphen_user.Output {
        try await client.send(
            input: input,
            forOperation: Operations.interactions_sol_get_hyphen_restrictions_hyphen_for_hyphen_authenticated_hyphen_user.id,
            serializer: { input in
                let path = try converter.renderedPath(
                    template: "/user/interaction-limits",
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
                    let body: Operations.interactions_sol_get_hyphen_restrictions_hyphen_for_hyphen_authenticated_hyphen_user.Output.Ok.Body
                    let chosenContentType = try converter.bestContentType(
                        received: contentType,
                        options: [
                            "application/json"
                        ]
                    )
                    switch chosenContentType {
                    case "application/json":
                        body = try await converter.getResponseBodyAsJSON(
                            Operations.interactions_sol_get_hyphen_restrictions_hyphen_for_hyphen_authenticated_hyphen_user.Output.Ok.Body.jsonPayload.self,
                            from: responseBody,
                            transforming: { value in
                                .json(value)
                            }
                        )
                    default:
                        preconditionFailure("bestContentType chose an invalid content type.")
                    }
                    return .ok(.init(body: body))
                case 204:
                    return .noContent(.init())
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
    /// Set interaction restrictions for your public repositories
    ///
    /// Temporarily restricts which type of GitHub user can interact with your public repositories. Setting the interaction limit at the user level will overwrite any interaction limits that are set for individual repositories owned by the user.
    ///
    /// - Remark: HTTP `PUT /user/interaction-limits`.
    /// - Remark: Generated from `#/paths//user/interaction-limits/put(interactions/set-restrictions-for-authenticated-user)`.
    public func interactions_sol_set_hyphen_restrictions_hyphen_for_hyphen_authenticated_hyphen_user(_ input: Operations.interactions_sol_set_hyphen_restrictions_hyphen_for_hyphen_authenticated_hyphen_user.Input) async throws -> Operations.interactions_sol_set_hyphen_restrictions_hyphen_for_hyphen_authenticated_hyphen_user.Output {
        try await client.send(
            input: input,
            forOperation: Operations.interactions_sol_set_hyphen_restrictions_hyphen_for_hyphen_authenticated_hyphen_user.id,
            serializer: { input in
                let path = try converter.renderedPath(
                    template: "/user/interaction-limits",
                    parameters: []
                )
                var request: HTTPTypes.HTTPRequest = .init(
                    soar_path: path,
                    method: .put
                )
                suppressMutabilityWarning(&request)
                converter.setAcceptHeader(
                    in: &request.headerFields,
                    contentTypes: input.headers.accept
                )
                let body: OpenAPIRuntime.HTTPBody?
                switch input.body {
                case let .json(value):
                    body = try converter.setRequiredRequestBodyAsJSON(
                        value,
                        headerFields: &request.headerFields,
                        contentType: "application/json; charset=utf-8"
                    )
                }
                return (request, body)
            },
            deserializer: { response, responseBody in
                switch response.status.code {
                case 200:
                    let contentType = converter.extractContentTypeIfPresent(in: response.headerFields)
                    let body: Operations.interactions_sol_set_hyphen_restrictions_hyphen_for_hyphen_authenticated_hyphen_user.Output.Ok.Body
                    let chosenContentType = try converter.bestContentType(
                        received: contentType,
                        options: [
                            "application/json"
                        ]
                    )
                    switch chosenContentType {
                    case "application/json":
                        body = try await converter.getResponseBodyAsJSON(
                            Components.Schemas.interaction_hyphen_limit_hyphen_response.self,
                            from: responseBody,
                            transforming: { value in
                                .json(value)
                            }
                        )
                    default:
                        preconditionFailure("bestContentType chose an invalid content type.")
                    }
                    return .ok(.init(body: body))
                case 422:
                    let contentType = converter.extractContentTypeIfPresent(in: response.headerFields)
                    let body: Components.Responses.validation_failed.Body
                    let chosenContentType = try converter.bestContentType(
                        received: contentType,
                        options: [
                            "application/json"
                        ]
                    )
                    switch chosenContentType {
                    case "application/json":
                        body = try await converter.getResponseBodyAsJSON(
                            Components.Schemas.validation_hyphen_error.self,
                            from: responseBody,
                            transforming: { value in
                                .json(value)
                            }
                        )
                    default:
                        preconditionFailure("bestContentType chose an invalid content type.")
                    }
                    return .unprocessableContent(.init(body: body))
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
    /// Remove interaction restrictions from your public repositories
    ///
    /// Removes any interaction restrictions from your public repositories.
    ///
    /// - Remark: HTTP `DELETE /user/interaction-limits`.
    /// - Remark: Generated from `#/paths//user/interaction-limits/delete(interactions/remove-restrictions-for-authenticated-user)`.
    public func interactions_sol_remove_hyphen_restrictions_hyphen_for_hyphen_authenticated_hyphen_user(_ input: Operations.interactions_sol_remove_hyphen_restrictions_hyphen_for_hyphen_authenticated_hyphen_user.Input) async throws -> Operations.interactions_sol_remove_hyphen_restrictions_hyphen_for_hyphen_authenticated_hyphen_user.Output {
        try await client.send(
            input: input,
            forOperation: Operations.interactions_sol_remove_hyphen_restrictions_hyphen_for_hyphen_authenticated_hyphen_user.id,
            serializer: { input in
                let path = try converter.renderedPath(
                    template: "/user/interaction-limits",
                    parameters: []
                )
                var request: HTTPTypes.HTTPRequest = .init(
                    soar_path: path,
                    method: .delete
                )
                suppressMutabilityWarning(&request)
                return (request, nil)
            },
            deserializer: { response, responseBody in
                switch response.status.code {
                case 204:
                    return .noContent(.init())
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
