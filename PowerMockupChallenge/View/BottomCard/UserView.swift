//
//  UserView.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/17/23.
//

import SwiftUI

struct UserView: View {
    var employeeName = "Jason Cypret"
    var employeeRole = "Vice President of User Experience"
    var initials = ""
  
    var body: some View {
        
        
        HStack {
        UserIconView(initials: initials)
            VStack(alignment: .leading) {
                Text(employeeName)
                Text(employeeRole)
            }
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
