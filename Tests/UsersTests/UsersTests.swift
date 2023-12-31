import XCTest
import GitHubRestAPIUsers
import OpenAPIRuntime
import OpenAPIURLSession

final class UsersTests: XCTestCase {
    
    func testUsersCountGreaterThanZero() async throws {
        let client = Client(
            serverURL: try Servers.server1(),
            transport: URLSessionTransport()
        )
        let list = try await client.users_sol_list()
        XCTAssertGreaterThan(try list.ok.body.json.count, 0)
    }
    
}
