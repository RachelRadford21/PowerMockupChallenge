//
//  ViewAllEmployeesView.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/18/23.
//

import SwiftUI

struct ViewAllEmployeesView: View {
    @EnvironmentObject var vm: ViewModel
    var employees: [Employee] = Employee.randomData
    var body: some View {
        DismissSheetView()
        List {
                ForEach(vm.employees, id: \.id) { name in
                    
                    HStack {
                        if name.firstname == "Courtney" || name.lastname == "Long" {
                            AvatarIconView()
                                .padding(.bottom, 20)
                        }else {
                            UserIconView(initials: "\(name.firstname.first!)" + "\(name.lastname.first!)")
                                .padding(.bottom, 20)
                        }
                        
                        UserView(employeeName: "\(name.firstname)  \(name.lastname)", employeeRole: "\(name.role)")
                            .padding(.bottom, 20)
                        
                    }
                }
                .listRowSeparator(.hidden)
        }
    }
}

//struct ViewAllEmployeesView_Previews: PreviewProvider {
//    static var previews: some View {
//        ViewAllEmployeesView()
//            .environmentObject(ViewModel())
//    }
//}
