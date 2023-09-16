//
//  PowerMockupChallengeApp.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/16/23.
//

import SwiftUI

@main
struct PowerMockupChallengeApp: App {
    @StateObject var vm: ViewModel = ViewModel()
    var body: some Scene {
        WindowGroup {
        
           ContentView()
                .environmentObject(vm)
                .environment(\.font, Font.custom("Monserrat", size: 10))
        }
    }
}
