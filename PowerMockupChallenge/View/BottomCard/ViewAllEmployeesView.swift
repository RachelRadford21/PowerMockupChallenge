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
            ForEach(employees) { employee in
                UserView(employeeName: "\(employee.firstname)  \(employee.lastname)", employeeRole: "\(employee.role)", initials: "\(employee.firstname.first!)" + "\(employee.lastname.first!)")
                    // Unfortunately the icon doesnt show image for Courtney in this view
            }
        }
    }
}

//struct ViewAllEmployeesView_Previews: PreviewProvider {
//    static var previews: some View {
//        ViewAllEmployeesView()
//            .environmentObject(ViewModel())
//    }
//}
