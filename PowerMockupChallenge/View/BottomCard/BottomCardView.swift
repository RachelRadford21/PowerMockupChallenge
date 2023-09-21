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
    @EnvironmentObject var vm: ViewModel
    var body: some View {
        VStack {
            TextView(title: "Employees", bottomPadding: 15, topPadding: 100, leadingPadding: 25, trailingPadding: 255, textSize: 16, textColor: .black)
                .bold()
          
                VStack(alignment: .leading) {
                    let bottomCardEmployeeArray = vm.employees.prefix(4)
                    ForEach(bottomCardEmployeeArray, id: \.id) { name in
                      
                        HStack {
                            if name.firstname == "Courtney" || name.lastname == "Long" {
                                AvatarIconView()
                                    .padding(.bottom, 10)
                            }else {
                                UserIconView(initials: "\(name.firstname.first!)" + "\(name.lastname.first!)")
                                    .padding(.bottom, 10)
                            }
                            
                            UserView(employeeName: "\(name.firstname)  \(name.lastname)", employeeRole: "\(name.role)")
                                .padding(.bottom, 10)
                            
                        }.padding(.trailing, 40)
                    }
                }
            ButtonView(name: "View All", buttonColor: .clear, buttonTextColor: .powerColor, topPadding: 5)
                .sheet(isPresented: $vm.isPresented) {
                    ViewAllEmployeesView()
                }
        } .padding(.bottom, 75)
    }
}

struct BottomCardView_Previews: PreviewProvider {
    static var previews: some View {
        BottomCardView()
            .environmentObject(ViewModel())
    }
}
