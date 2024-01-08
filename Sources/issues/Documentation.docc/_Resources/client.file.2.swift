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

struct GitHubRestAPIIssuesExtension {

    let client = Client(
        serverURL: try Servers.server1(),
        transport: URLSessionTransport()
    )

}