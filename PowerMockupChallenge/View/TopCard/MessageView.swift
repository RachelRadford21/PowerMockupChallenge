//
//  MessageView.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/18/23.
//

import SwiftUI
//MARK: Comment
/*
  Allows user to search for employees to message when Message button is pressed.
 This was just fun. I have always used data from an api or local json file for data
 but not a fake data set.
 ** See if you can break this down into smaller views
*/

struct MessageView: View {
    @EnvironmentObject var vm: ViewModel
    var employees: [Employee] = Employee.randomData
    // Filters data in lower or uppercase and first or last name
    var filteredEmployees: [Employee] {
        return employees.filter { $0.firstname.localizedCaseInsensitiveContains(vm.searchedEmployees) || $0.lastname.localizedCaseInsensitiveContains(vm.searchedEmployees)
            
        }
    }
    var body: some View {
        // This view is a little large
        NavigationStack {
            PowerIconView(width: 55, height: 55, alignmentChoice: .topLeading, trailingPadding: 0, bottomPadding: 0)
            List {
                ForEach(vm.searchedEmployees.isEmpty ? employees : filteredEmployees, id: \.id) { name in
                    NavigationLink {
                        Spacer()
                        UserView(employeeName: "\(name.firstname)  \(name.lastname)", employeeRole: "\(name.role)", initials: "\(name.firstname.first!)" + "\(name.lastname.first!)", imageName: name.firstname == "Courtney" ? "Avatar" : "")

                        Spacer()
                        // This needs styling
                        TextField("Enter Your name", text: $vm.user)
                            .padding(.leading, 20)
                            .frame(width: 300, height: 55)
                            .border(.gray, width: 2)
                            .padding(.horizontal, 20)
                           
                        Spacer()
                        VStack {
                            Text("Enter Message Here")
                            TextEditor(text: $vm.message)
                                .frame(width: 300, height: 250, alignment: .center)
                                .border(.gray, width: 2)
                                .padding(.bottom, 100)
                        }
                        .padding(.top, -20)

                       Spacer()
                    }label: {
                        Text(name.firstname + " " + name.lastname)
                            .font(.system(size: 16))
                    }
                }
            }
        }
        .searchable(text: $vm.searchedEmployees, prompt: "Search Employees")
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
            .environmentObject(ViewModel())
    }
}
