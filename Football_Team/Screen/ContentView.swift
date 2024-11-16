//
//  ContentView.swift
//  Football_Team
//
//  Created by Abdirahman Standard on 16/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var squad = [Player]()
    var service = Service()
    var body: some View {
        VStack {
            List {
                ForEach(squad, id: \.id) { player in
                                    Text(player.name) // Display each player's name
                                }
            }
            Button("Get Teams") {
                Task {
                    if let team = await service.fetchTeams() { // Fetch the single FootballTeam
                                        squad = team.squad // Extract the squad
                                    }
                                }
            }
        }
        .padding()
       
    }
    
   
        
}

#Preview {
    ContentView()
}
