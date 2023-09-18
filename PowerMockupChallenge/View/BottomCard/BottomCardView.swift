//
//  BottomCardView.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/17/23.
//

import SwiftUI

struct BottomCardView: View {
    var avatar = "assets/avatar.png"
    var body: some View {
        VStack {
            TextView(title: "Employees", bottomPadding: 10, topPadding: -20, leadingPadding: 25, trailingPadding: 255, textSize: 16, textColor: .black)
                .bold()
            VStack(alignment: .leading) {
                UserView(employeeName: "Jason Cypret", employeeRole: "Vice President of User Experience" , initials: "JC")
                UserView(employeeName: "Jason Battenfield", employeeRole: "Director of User Experience", initials: "JB")
                UserView()
                UserView(employeeName: "Stephen Marshall", employeeRole: "Senior UX Designer", initials: "SM")

            }
        }
    }
}

struct BottomCardView_Previews: PreviewProvider {
    static var previews: some View {
        BottomCardView()
    }
}
