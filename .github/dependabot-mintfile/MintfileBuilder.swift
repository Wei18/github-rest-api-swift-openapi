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

	func write(to path: String = "Mintfile") {
		let lines = dependencies.map { "\($0.path)@\($0.version)" }
		let content = lines.joined(separator: "\n") + "\n"
		do {
			try content.write(toFile: path, atomically: true, encoding: .utf8)
		} catch {
			print("Failed to write Mintfile: \(error)")
		}
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
MintfileBuilder().write()
