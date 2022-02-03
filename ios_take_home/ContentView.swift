//
//  ContentView.swift
//  ios_take_home
//
//  Created by Deepak Kumar on 2/2/22.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var enteredNewUsername = false

    var body: some View {
        VStack {
            Text("Enter your username below")
            TextField("______", text: $username).submitLabel(.done).multilineTextAlignment(.center)
            Button("Enter") {
                enteredNewUsername.toggle()
            }
            if (enteredNewUsername) {
                let featureFlagService = FeatureFlagService(username: username)
                if (username != "") {
                    Text("Your nickname is: " + featureFlagService.getCustomizedNickname())
                } else {
                    Text("Please enter a valid username!")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
