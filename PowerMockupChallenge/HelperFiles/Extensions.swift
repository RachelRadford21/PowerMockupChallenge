//
//  Extensions.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/16/23.
//

import Foundation
import SwiftUI

extension Color {
    static let lightGrey = Color(red: 0.41, green: 0.47, blue: 0.53)
    static let otherGrey = Color(red: 0.58, green: 0.66, blue: 0.72)
    static let linkColor = Color(red: 0, green: 0.34, blue: 0.81)
    static let powerColor = Color(red: 0, green: 0.45, blue: 0.81)
    static let messageButtonColor = Color(red: 0, green: 0.34, blue: 0.81)
    
}
// Fake Data
extension Employee {
    static var randomData: [Employee] = [
        .init(id: UUID(), firstname: "Jason", lastname: "Cypret", role: "Vice President of UX Design"),
        .init(id: UUID(), firstname: "Justin", lastname: "Battenfield", role: "Director of User Experience"),
        .init(id: UUID(), firstname: "Courtney", lastname: "Long", role: "UX Design Mentor", imageName: Image("\(String(describing: "Avatar"))")),
        .init(id: UUID(), firstname: "Stephen", lastname: "Marshall", role: "Senior UX Engineer"),
        .init(id: UUID(), firstname: "Jane", lastname: "Doe", role: "Associate UI/UX Developer"),
        .init(id: UUID(), firstname: "John", lastname: "Doe", role: "Associate UI/UX Developer"),
        .init(id: UUID(), firstname: "Rachel", lastname: "Radford", role: "Associate Frontend iOS Developer")
    ]
}

extension ButtonView {
    func buttonFunctions() {
        if name == "Follow" {
            vm.followers += 1
        }
        if name == "Message" {
            isMessageButtonPressed.toggle()
        }
        if name == "Cancel" {
            vm.user = ""
        }
    }
}


