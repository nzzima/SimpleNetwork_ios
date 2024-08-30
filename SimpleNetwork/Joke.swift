//
//  Joke.swift
//  SimpleNetwork
//
//  Created by Nikita Krylov on 30.08.2024.
//

import Foundation

// MARK: - Welcome
struct Joke: Codable {
    let error: Bool?
    let category, type, setup, delivery: String?
    let flags: Flags?
    let safe: Bool?
    let id: Int?
    let lang: String?
}

// MARK: - Flags
struct Flags: Codable {
    let nsfw, religious, political, racist: Bool?
    let sexist, explicit: Bool?
}
