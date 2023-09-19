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
                        
                        UserView(employeeName: "\(name.firstname)  \(name.lastname)", employeeRole: "\(name.role)", initials: "\(name.firstname.first!)" + "\(name.lastname.first!)", imageName: name.firstname == "Courtney" ? "Avatar" : "")
                            .padding(.top, 20)
                        Spacer()
                        MessageBubbleView(employee1: "Hi, do we still have a meeting at 10?", employee2: "Yes, we do. See you then.")
                        Spacer()
                        
                        VStack {
                            TextField("Message", text: $vm.user)
                                .font(.system(size: 16))
                                .padding(.leading, 20)
                                .frame(width: 350, height: 55, alignment: .center)
                                .background(Color.black.opacity(0.3))
                                .clipShape(RoundedRectangle(cornerRadius: 16.0, style: .continuous))
                            
                            
                            HStack {
                                ButtonView(name: "Send", buttonColor: Color.powerColor, buttonTextColor: .white, topPadding: 0)
                                ButtonView(name: "Cancel", buttonColor: Color.otherGrey.opacity(0.1), buttonTextColor: .powerColor, topPadding: 0)
                                    
                                    
                                
                            }.padding(.top, 20)
                        }.padding(.bottom, 20)
                        
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
