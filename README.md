# Football_Team

Football_Team is an iOS application that displays information about football teams and their squads. The app is built using SwiftUI and leverages the [Football Data API](https://www.football-data.org/) to fetch real-time team data.

## Features

- **Team Information**: Displays details about a specific football team, including the name, venue, and more.
- **Player List**: View the squad of players associated with the team.
- **Modern UI**: Built with SwiftUI for a sleek and responsive user interface.

## Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/abdiysf/Football_Team.git
   ```

2. **Set Up API Key**
   - **Create an account** on [Football Data](https://www.football-data.org/) and generate a free API key.
   - In the project directory, you’ll notice the `Config.xcconfig` file is missing (intentionally removed for security reasons).  
   - Create a new `Config.xcconfig` file in the `Football_Team` project folder.
   - Add the following line to your `Config.xcconfig` file:
     ```plaintext
     API_KEY = your_api_key_here
     ```

3. **Open in Xcode**
   - Open the cloned repository in Xcode.

4. **Build and Run**
   - Select your simulator/device.
   - Press `Cmd + R` to build and run the app.

## Requirements

- Xcode 14 or later
- iOS 15 or later

## Usage

- Launch the app on your device or simulator.
- Press the "Get Squad" button to fetch and display the list of players in the team's squad.
- Explore the details of the displayed team and players.

## Technologies Used

- **SwiftUI**: Used to build a modern, dynamic user interface.
- **Networking**: Fetches real-time data using the Football Data API.
- **Async/Await**: Provides a seamless experience with asynchronous data fetching.

---

Enjoy managing football team information effortlessly with Football_Team! ⚽️
