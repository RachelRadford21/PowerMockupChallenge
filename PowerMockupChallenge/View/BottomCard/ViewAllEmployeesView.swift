//
//  ViewAllEmployeesView.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/18/23.
//

import SwiftUI

struct ViewAllEmployeesView: View {
    var employees: [Employee] = Employee.randomData
    var body: some View {
        List {
            ForEach(employees) { employee in
                UserView(employeeName: "\(employee.firstname)  \(employee.lastname)", employeeRole: "\(employee.role)", initials: "\(employee.firstname.first!)" + "\(employee.lastname.first!)", imageName: "Avatar")
                    // Unfortunately the icon doesnt show image for Courtney in this view
            }
        }
    }
}

struct ViewAllEmployeesView_Previews: PreviewProvider {
    static var previews: some View {
        ViewAllEmployeesView()
    }
}
