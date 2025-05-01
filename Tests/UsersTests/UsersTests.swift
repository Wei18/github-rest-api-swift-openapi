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
        let list = try await client.usersList()
        XCTAssertGreaterThan(try list.ok.body.json.count, 0)
    }
    
}
