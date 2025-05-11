//
//  MintfileBuilder.swift
//  GitHubRestAPISwiftOpenAPI
//
//  Created by zwc on 2025/5/11.
//

import Foundation

struct MintfileBuilder {

	struct Dependency {
		let name: String
		let baseURL: String
		let path: String
		let version: String
		var urlString: String { "\(baseURL)/\(path)" }
	}

	let dependencies = [
		Dependency(
			name: "Mint",
			baseURL: "https://github.com",
			path: "yonaskolb/Mint",
			version: "0.17.5"
		),
		Dependency(
			name: "swift-openapi-generator",
			baseURL: "https://github.com",
			path: "apple/swift-openapi-generator",
			version: "1.7.2"
		)
	]

	func addVersionUpdatesManifests() {	
		for dependency in dependencies {
			let manifestPath = ".github/dependabot-mintfile/manifest-\(dependency.name)"
			shell("mkdir -p \(manifestPath); swift package --package-path \(manifestPath) init --type empty")
			shell("mkdir -p \(manifestPath); swift package --package-path \(manifestPath) add-dependency \(dependency.urlString) --exact \(dependency.version)")
		}
	}

	/// provided from ChatGPT
	func write(to path: String = "Mintfile") throws {
		var lines: [String] = []

		for dependency in dependencies {
			let manifestPath = ".github/dependabot-mintfile/manifest-\(dependency.name)" + "/Package.swift"
			let contents = try String(contentsOfFile: manifestPath, encoding: .utf8)

			let pattern = #"\.package\(url:\s*"(.*?)",\s*exact:\s*"(.*?)"\)"#
			let regex = try NSRegularExpression(pattern: pattern)

			if let match = regex.firstMatch(in: contents, range: NSRange(contents.startIndex..., in: contents)),
				let versionRange = Range(match.range(at: 2), in: contents),
			    let urlRange = Range(match.range(at: 1), in: contents) {

				let version = String(contents[versionRange])
				let path = URL(string: String(contents[urlRange]))?
					.path
					.split(separator: "/")
					.joined(separator: "/")

				if let path {
					lines.append("\(path)@\(version)")
				}
			}
		}
		let content = lines.joined(separator: "\n") + "\n"
		try content.write(toFile: path, atomically: true, encoding: .utf8)
	}

	@discardableResult
	private func shell(_ command: String) -> Int32 {
		let task = Process()
		task.launchPath = "/bin/bash"
		task.arguments = ["-c", command]
		task.launch()
		task.waitUntilExit()
		return task.terminationStatus
	}
}

// MintfileBuilder().addVersionUpdatesManifests()
do {
	try MintfileBuilder().write()
} catch {
	print(error)
}
