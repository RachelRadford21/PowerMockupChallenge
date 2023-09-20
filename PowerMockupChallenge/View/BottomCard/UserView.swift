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
    var employees: [Employee] = Employee.randomData
    var body: some View {
    
        HStack {
            if employeeName == "Courtney Long" {
                AvatarIconView()
            }else {
                UserIconView(initials: initials)
            }
            VStack(alignment: .leading) {
                Text(employeeName)
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                Text(employeeRole)
                    .foregroundColor(Color.lightGrey)
                    .font(.system(size: 16))
            }
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
         
            
    }
}
