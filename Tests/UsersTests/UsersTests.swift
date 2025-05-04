import XCTest
import GitHubRestAPIUsers
import OpenAPIRuntime
import OpenAPIURLSession

final class UsersTests: XCTestCase {
    
    func testUsersCountGreaterThanZero() async throws {
        let client = Client(
            serverURL: try Servers.Server1.url(),
            transport: URLSessionTransport()
        )
        let list = try await client.usersList()
        XCTAssertGreaterThan(try list.ok.body.json.count, 0)
    }
    
}
