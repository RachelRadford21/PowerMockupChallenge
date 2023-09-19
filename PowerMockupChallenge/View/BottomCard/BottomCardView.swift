//
//  BottomCardView.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/17/23.
//

import SwiftUI
//MARK: Comments
/*
 This view houses all the components for the bottom card
*/
struct BottomCardView: View {
    @State var isPresented = false
    private let avatar: Image  = Image("Avatar.png")
    
    var body: some View {
        VStack {
            TextView(title: "Employees", bottomPadding: 20, topPadding: 20, leadingPadding: 25, trailingPadding: 255, textSize: 16, textColor: .black)
                .bold()
            VStack(alignment: .leading) {
                
                UserView(employeeName: "Jason Cypret", employeeRole: "Vice President of User Experience" , initials: "JC")
                UserView(employeeName: "Jason Battenfield", employeeRole: "Director of User Experience", initials: "JB")
                UserView(employeeName: "Courtney Long", employeeRole: "UX Mentor", imageName: "Avatar")
                UserView(employeeName: "Stephen Marshall", employeeRole: "Senior UX Designer", initials: "SM")

            }
            
            TextView(title: "View All", bottomPadding: 0, topPadding: 10, leadingPadding: 0, trailingPadding: 0, textSize: 14, textColor: .blue)
                .onTapGesture {
                    isPresented.toggle()
                }.sheet(isPresented: $isPresented) {
                    ViewAllEmployeesView()
                }
        }
    }
}

struct BottomCardView_Previews: PreviewProvider {
    static var previews: some View {
        BottomCardView()
           
    }
}
