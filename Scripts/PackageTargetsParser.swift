//
//  PackageTargetsParser.swift
//  GitHubRestAPISwiftOpenAPI
//
//  Created by zwc on 2025/5/11.
//

import Foundation

struct ErrorMessage: LocalizedError {
    var message: String
    var errorDescription: String? { message }
    init(message: String, line: Int = #line) {
        self.message = "\(line): \(message)"
    }
}

/// A struct that parses a JSON file containing a "tags" array, extracting the "name" field from each element.
struct PackageTargetsParser {

    /// Parses the provided JSON file and extracts the "name" values from the "tags" array.
    ///
    /// - Parameter path: The path to the JSON file to be parsed.
    /// - Returns: An array of strings representing the "name" values found in the "tags" array.
    /// - Throws: An error if the file cannot be read or the JSON structure is invalid.
    ///
    /// Example:
    /// 
    /// Given a JSON file:
    /// ```json
    /// {
    ///   "tags": [
    ///     { "name": "user" },
    ///     { "name": "admin" },
    ///     { "name": "billing" }
    ///   ]
    /// }
    /// ```
    /// The function will return:
    /// ```swift
    /// ["user", "admin", "billing"]
    /// ```
    func parse(from path: String) throws -> [String] {
        let data = try Data(contentsOf: URL(fileURLWithPath: path))
        let json = try JSONSerialization.jsonObject(with: data, options: [])
        if let dict = json as? [String: Any], let tags = dict["tags"] as? [[String: Any]] {
            return tags.compactMap { $0["name"] as? String }
        } else {
            throw ErrorMessage(message: "Properties not found.")
        }
    }
}

if let argPath = CommandLine.arguments[1]
    .split(whereSeparator: \.isNewline)
    .first {
    let path = String(argPath)
    let names = try PackageTargetsParser().parse(from: path)
    print(names.joined(separator: "\n"))
} else {
    throw ErrorMessage(message: "PackageTargetsParser.parse(from:) failure")
}


