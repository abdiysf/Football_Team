//
//  FootballTeam.swift
//  Football_Team
//
//  Created by Abdirahman Standard on 16/11/24.
//

import Foundation

struct FootballTeam : Decodable, Identifiable {
    
    let area: Area
    let id: Int
    let name: String
    let shortName: String
    let tla: String
    let crest: String
    let address: String
    let website: String
    let founded: Int
    let clubColors: String
    let venue: String
    let runningCompetitions: [Competition]
    let coach: Coach
    let squad: [Player]
    let staff: [String]
    let lastUpdated: String
}

// MARK: - Area
struct Area: Codable {
    let id: Int
    let name: String
    let code: String
    let flag: String
}


// MARK: - Competition
struct Competition: Codable {
    let id: Int
    let name: String
    let code: String
    let type: String
    let emblem: String
}


// MARK: - Coach
struct Coach: Codable {
    let id: Int
    let firstName: String
    let lastName: String
    let name: String
    let dateOfBirth: String
    let nationality: String
    let contract: Contract
}


// MARK: - Contract
struct Contract: Codable {
    let start: String
    let until: String
}

// MARK: - Player
struct Player: Decodable, Identifiable {
    let id: Int
    let name: String
    let position: String
    let dateOfBirth: String
    let nationality: String
}
