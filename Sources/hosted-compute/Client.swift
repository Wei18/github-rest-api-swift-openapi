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
    /// List hosted compute network configurations for an organization
    ///
    /// Lists all hosted compute network configurations configured in an organization.
    ///
    /// OAuth app tokens and personal access tokens (classic) need the `read:network_configurations` scope to use this endpoint.
    ///
    /// - Remark: HTTP `GET /orgs/{org}/settings/network-configurations`.
    /// - Remark: Generated from `#/paths//orgs/{org}/settings/network-configurations/get(hosted-compute/list-network-configurations-for-org)`.
    public func hosted_hyphen_compute_sol_list_hyphen_network_hyphen_configurations_hyphen_for_hyphen_org(_ input: Operations.hosted_hyphen_compute_sol_list_hyphen_network_hyphen_configurations_hyphen_for_hyphen_org.Input) async throws -> Operations.hosted_hyphen_compute_sol_list_hyphen_network_hyphen_configurations_hyphen_for_hyphen_org.Output {
        try await client.send(
            input: input,
            forOperation: Operations.hosted_hyphen_compute_sol_list_hyphen_network_hyphen_configurations_hyphen_for_hyphen_org.id,
            serializer: { input in
                let path = try converter.renderedPath(
                    template: "/orgs/{}/settings/network-configurations",
                    parameters: [
                        input.path.org
                    ]
                )
                var request: HTTPTypes.HTTPRequest = .init(
                    soar_path: path,
                    method: .get
                )
                suppressMutabilityWarning(&request)
                try converter.setQueryItemAsURI(
                    in: &request,
                    style: .form,
                    explode: true,
                    name: "per_page",
                    value: input.query.per_page
                )
                try converter.setQueryItemAsURI(
                    in: &request,
                    style: .form,
                    explode: true,
                    name: "page",
                    value: input.query.page
                )
                converter.setAcceptHeader(
                    in: &request.headerFields,
                    contentTypes: input.headers.accept
                )
                return (request, nil)
            },
            deserializer: { response, responseBody in
                switch response.status.code {
                case 200:
                    let headers: Operations.hosted_hyphen_compute_sol_list_hyphen_network_hyphen_configurations_hyphen_for_hyphen_org.Output.Ok.Headers = .init(Link: try converter.getOptionalHeaderFieldAsURI(
                        in: response.headerFields,
                        name: "Link",
                        as: Components.Headers.link.self
                    ))
                    let contentType = converter.extractContentTypeIfPresent(in: response.headerFields)
                    let body: Operations.hosted_hyphen_compute_sol_list_hyphen_network_hyphen_configurations_hyphen_for_hyphen_org.Output.Ok.Body
                    let chosenContentType = try converter.bestContentType(
                        received: contentType,
                        options: [
                            "application/json"
                        ]
                    )
                    switch chosenContentType {
                    case "application/json":
                        body = try await converter.getResponseBodyAsJSON(
                            Operations.hosted_hyphen_compute_sol_list_hyphen_network_hyphen_configurations_hyphen_for_hyphen_org.Output.Ok.Body.jsonPayload.self,
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
    /// Create a hosted compute network configuration for an organization
    ///
    /// Creates a hosted compute network configuration for an organization.
    ///
    /// OAuth app tokens and personal access tokens (classic) need the `write:network_configurations` scope to use this endpoint.
    ///
    /// - Remark: HTTP `POST /orgs/{org}/settings/network-configurations`.
    /// - Remark: Generated from `#/paths//orgs/{org}/settings/network-configurations/post(hosted-compute/create-network-configuration-for-org)`.
    public func hosted_hyphen_compute_sol_create_hyphen_network_hyphen_configuration_hyphen_for_hyphen_org(_ input: Operations.hosted_hyphen_compute_sol_create_hyphen_network_hyphen_configuration_hyphen_for_hyphen_org.Input) async throws -> Operations.hosted_hyphen_compute_sol_create_hyphen_network_hyphen_configuration_hyphen_for_hyphen_org.Output {
        try await client.send(
            input: input,
            forOperation: Operations.hosted_hyphen_compute_sol_create_hyphen_network_hyphen_configuration_hyphen_for_hyphen_org.id,
            serializer: { input in
                let path = try converter.renderedPath(
                    template: "/orgs/{}/settings/network-configurations",
                    parameters: [
                        input.path.org
                    ]
                )
                var request: HTTPTypes.HTTPRequest = .init(
                    soar_path: path,
                    method: .post
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
                case 201:
                    let contentType = converter.extractContentTypeIfPresent(in: response.headerFields)
                    let body: Operations.hosted_hyphen_compute_sol_create_hyphen_network_hyphen_configuration_hyphen_for_hyphen_org.Output.Created.Body
                    let chosenContentType = try converter.bestContentType(
                        received: contentType,
                        options: [
                            "application/json"
                        ]
                    )
                    switch chosenContentType {
                    case "application/json":
                        body = try await converter.getResponseBodyAsJSON(
                            Components.Schemas.network_hyphen_configuration.self,
                            from: responseBody,
                            transforming: { value in
                                .json(value)
                            }
                        )
                    default:
                        preconditionFailure("bestContentType chose an invalid content type.")
                    }
                    return .created(.init(body: body))
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
    /// Get a hosted compute network configuration for an organization
    ///
    /// Gets a hosted compute network configuration configured in an organization.
    ///
    /// OAuth app tokens and personal access tokens (classic) need the `read:network_configurations` scope to use this endpoint.
    ///
    /// - Remark: HTTP `GET /orgs/{org}/settings/network-configurations/{network_configuration_id}`.
    /// - Remark: Generated from `#/paths//orgs/{org}/settings/network-configurations/{network_configuration_id}/get(hosted-compute/get-network-configuration-for-org)`.
    public func hosted_hyphen_compute_sol_get_hyphen_network_hyphen_configuration_hyphen_for_hyphen_org(_ input: Operations.hosted_hyphen_compute_sol_get_hyphen_network_hyphen_configuration_hyphen_for_hyphen_org.Input) async throws -> Operations.hosted_hyphen_compute_sol_get_hyphen_network_hyphen_configuration_hyphen_for_hyphen_org.Output {
        try await client.send(
            input: input,
            forOperation: Operations.hosted_hyphen_compute_sol_get_hyphen_network_hyphen_configuration_hyphen_for_hyphen_org.id,
            serializer: { input in
                let path = try converter.renderedPath(
                    template: "/orgs/{}/settings/network-configurations/{}",
                    parameters: [
                        input.path.org,
                        input.path.network_configuration_id
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
                    let headers: Operations.hosted_hyphen_compute_sol_get_hyphen_network_hyphen_configuration_hyphen_for_hyphen_org.Output.Ok.Headers = .init(Link: try converter.getOptionalHeaderFieldAsURI(
                        in: response.headerFields,
                        name: "Link",
                        as: Components.Headers.link.self
                    ))
                    let contentType = converter.extractContentTypeIfPresent(in: response.headerFields)
                    let body: Operations.hosted_hyphen_compute_sol_get_hyphen_network_hyphen_configuration_hyphen_for_hyphen_org.Output.Ok.Body
                    let chosenContentType = try converter.bestContentType(
                        received: contentType,
                        options: [
                            "application/json"
                        ]
                    )
                    switch chosenContentType {
                    case "application/json":
                        body = try await converter.getResponseBodyAsJSON(
                            Components.Schemas.network_hyphen_configuration.self,
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
    /// Update a hosted compute network configuration for an organization
    ///
    /// Updates a hosted compute network configuration for an organization.
    ///
    /// OAuth app tokens and personal access tokens (classic) need the `write:network_configurations` scope to use this endpoint.
    ///
    /// - Remark: HTTP `PATCH /orgs/{org}/settings/network-configurations/{network_configuration_id}`.
    /// - Remark: Generated from `#/paths//orgs/{org}/settings/network-configurations/{network_configuration_id}/patch(hosted-compute/update-network-configuration-for-org)`.
    public func hosted_hyphen_compute_sol_update_hyphen_network_hyphen_configuration_hyphen_for_hyphen_org(_ input: Operations.hosted_hyphen_compute_sol_update_hyphen_network_hyphen_configuration_hyphen_for_hyphen_org.Input) async throws -> Operations.hosted_hyphen_compute_sol_update_hyphen_network_hyphen_configuration_hyphen_for_hyphen_org.Output {
        try await client.send(
            input: input,
            forOperation: Operations.hosted_hyphen_compute_sol_update_hyphen_network_hyphen_configuration_hyphen_for_hyphen_org.id,
            serializer: { input in
                let path = try converter.renderedPath(
                    template: "/orgs/{}/settings/network-configurations/{}",
                    parameters: [
                        input.path.org,
                        input.path.network_configuration_id
                    ]
                )
                var request: HTTPTypes.HTTPRequest = .init(
                    soar_path: path,
                    method: .patch
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
                    let body: Operations.hosted_hyphen_compute_sol_update_hyphen_network_hyphen_configuration_hyphen_for_hyphen_org.Output.Ok.Body
                    let chosenContentType = try converter.bestContentType(
                        received: contentType,
                        options: [
                            "application/json"
                        ]
                    )
                    switch chosenContentType {
                    case "application/json":
                        body = try await converter.getResponseBodyAsJSON(
                            Components.Schemas.network_hyphen_configuration.self,
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
    /// Delete a hosted compute network configuration from an organization
    ///
    /// Deletes a hosted compute network configuration from an organization.
    ///
    /// OAuth app tokens and personal access tokens (classic) need the `write:network_configurations` scope to use this endpoint.
    ///
    /// - Remark: HTTP `DELETE /orgs/{org}/settings/network-configurations/{network_configuration_id}`.
    /// - Remark: Generated from `#/paths//orgs/{org}/settings/network-configurations/{network_configuration_id}/delete(hosted-compute/delete-network-configuration-from-org)`.
    public func hosted_hyphen_compute_sol_delete_hyphen_network_hyphen_configuration_hyphen_from_hyphen_org(_ input: Operations.hosted_hyphen_compute_sol_delete_hyphen_network_hyphen_configuration_hyphen_from_hyphen_org.Input) async throws -> Operations.hosted_hyphen_compute_sol_delete_hyphen_network_hyphen_configuration_hyphen_from_hyphen_org.Output {
        try await client.send(
            input: input,
            forOperation: Operations.hosted_hyphen_compute_sol_delete_hyphen_network_hyphen_configuration_hyphen_from_hyphen_org.id,
            serializer: { input in
                let path = try converter.renderedPath(
                    template: "/orgs/{}/settings/network-configurations/{}",
                    parameters: [
                        input.path.org,
                        input.path.network_configuration_id
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
    /// Get a hosted compute network settings resource for an organization
    ///
    /// Gets a hosted compute network settings resource configured for an organization.
    ///
    /// OAuth app tokens and personal access tokens (classic) need the `read:network_configurations` scope to use this endpoint.
    ///
    /// - Remark: HTTP `GET /orgs/{org}/settings/network-settings/{network_settings_id}`.
    /// - Remark: Generated from `#/paths//orgs/{org}/settings/network-settings/{network_settings_id}/get(hosted-compute/get-network-settings-for-org)`.
    public func hosted_hyphen_compute_sol_get_hyphen_network_hyphen_settings_hyphen_for_hyphen_org(_ input: Operations.hosted_hyphen_compute_sol_get_hyphen_network_hyphen_settings_hyphen_for_hyphen_org.Input) async throws -> Operations.hosted_hyphen_compute_sol_get_hyphen_network_hyphen_settings_hyphen_for_hyphen_org.Output {
        try await client.send(
            input: input,
            forOperation: Operations.hosted_hyphen_compute_sol_get_hyphen_network_hyphen_settings_hyphen_for_hyphen_org.id,
            serializer: { input in
                let path = try converter.renderedPath(
                    template: "/orgs/{}/settings/network-settings/{}",
                    parameters: [
                        input.path.org,
                        input.path.network_settings_id
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
                    let headers: Operations.hosted_hyphen_compute_sol_get_hyphen_network_hyphen_settings_hyphen_for_hyphen_org.Output.Ok.Headers = .init(Link: try converter.getOptionalHeaderFieldAsURI(
                        in: response.headerFields,
                        name: "Link",
                        as: Components.Headers.link.self
                    ))
                    let contentType = converter.extractContentTypeIfPresent(in: response.headerFields)
                    let body: Operations.hosted_hyphen_compute_sol_get_hyphen_network_hyphen_settings_hyphen_for_hyphen_org.Output.Ok.Body
                    let chosenContentType = try converter.bestContentType(
                        received: contentType,
                        options: [
                            "application/json"
                        ]
                    )
                    switch chosenContentType {
                    case "application/json":
                        body = try await converter.getResponseBodyAsJSON(
                            Components.Schemas.network_hyphen_settings.self,
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
