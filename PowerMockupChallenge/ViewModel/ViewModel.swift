//
//  ViewModel.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/16/23.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    @Published var isActive = false
    @Published var followers = 768
    @Published var isPresented = false
    @Published var user = ""
    @Published var message = ""
    @Published var searchedEmployees = ""
    @Published var imageName = "Avatar"
}
