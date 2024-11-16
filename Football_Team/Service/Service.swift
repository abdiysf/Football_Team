//
//  Service.swift
//  Football_Team
//
//  Created by Abdirahman Standard on 16/11/24.
//

import Foundation

struct Service {
    let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    func fetchTeams() async -> FootballTeam? {
        //MARK: - 1- check api key
        guard  apiKey != nil else {
            return nil
        }
        
        //MARK: - 2. add base url
        let url = URL(string: "https://api.football-data.org/v4/teams/90")!
        
        //MARK: - 3. api request
        var request = URLRequest(url: url)
        request.addValue("\(apiKey ?? "")", forHTTPHeaderField:  "X-Auth-Token")
        request.addValue("application/json", forHTTPHeaderField: "accept")
        
        
        // MARK: - 4. send request
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            let decode = JSONDecoder()
//            print("---data \(data)")
//            print("--- response \(response)")
            let result = try decode.decode(FootballTeam.self, from: data)
//            print("result = \(result)")
            return result
        }
        catch {
            print(error)
        }
        
        
        return nil
        
        
    }
}
