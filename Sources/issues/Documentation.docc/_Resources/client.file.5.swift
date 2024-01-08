//
//  File.swift
//
//
//  Created on 2024/1/8.
//

import Foundation
import GitHubRestAPIIssues
import OpenAPIRuntime
import OpenAPIURLSession
import HTTPTypes

let client = Client(
    serverURL: try Servers.server1(),
    transport: URLSessionTransport()
)

let response = try await client.issues_sol_list_hyphen_comments(
    path: .init(owner: "wei18", repo: "github-rest-api-swift-openapi", issue_number: 4)
)

switch response {
case .ok(let okResponse):
    print(okResponse)
case .undocumented(statusCode: let statusCode, _):
    print("🥺 undocumented response: \(statusCode)")
}
