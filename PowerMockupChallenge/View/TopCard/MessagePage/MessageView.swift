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
    // Filters data in lower or uppercase and first or last name
    var filteredEmployees: [Employee] {
        return vm.employees.filter { $0.firstname.localizedCaseInsensitiveContains(vm.searchedEmployees) || $0.lastname.localizedCaseInsensitiveContains(vm.searchedEmployees)
            
        }
    }
    var body: some View {
        DismissSheetView()
        NavigationStack {
            PowerIconView(width: 55, height: 55, alignmentChoice: .topLeading)

            List {
                
                ForEach(vm.searchedEmployees.isEmpty ? vm.employees : filteredEmployees, id: \.id) { name in
                    NavigationLink {
                        
                        if UIScreen.main.bounds.height > UIScreen.main.bounds.width {
                            HStack {
                                if name.firstname == "Courtney" || name.lastname == "Long" {
                                    AvatarIconView()
                                        .padding(.bottom, 50)
                                }else {
                                    UserIconView(initials: "\(name.firstname.first!)" + "\(name.lastname.first!)")
                                        .padding(.bottom, 50)
                                }
                                
                                UserView(employeeName: "\(name.firstname)  \(name.lastname)", employeeRole: "\(name.role)")
                                    .padding(.bottom, 50)
                                
                            }
                            MessageBubbleView(employee1: "Hi, do we still have a meeting at 10?", employee2: "Yes, we do. See you then.")
                            
                            VStack {
                                TextField("Message", text: $vm.user)
                                    .font(.system(size: 16))
                                    .padding(.leading, 50)
                                    .frame(width: 350, height: 55, alignment: .center)
                                    .background(Color.black.opacity(0.3))
                                    .clipShape(RoundedRectangle(cornerRadius: 16.0, style: .continuous))
                                
                                HStack {
                                    ButtonView(name: "Send", buttonColor: Color.powerColor, buttonTextColor: .white, topPadding: 0)
                                    ButtonView(name: "Cancel", buttonColor: Color.otherGrey.opacity(0.1), buttonTextColor: .powerColor, topPadding: 0)
                                    
                                }.padding(.top, 25)
                            }
                            .padding(.top, -30)
                           
                        }else if UIScreen.main.bounds.width > UIScreen.main.bounds.height {
                            
                            VStack {
                                HStack {
                                    if name.firstname == "Courtney" || name.lastname == "Long" {
                                        AvatarIconView()
                                    }else {
                                        UserIconView(initials: "\(name.firstname.first!)" + "\(name.lastname.first!)")
                                    }

                                    UserView(employeeName: "\(name.firstname)  \(name.lastname)", employeeRole: "\(name.role)")
                                         .padding(.trailing, 20)
                                        
                                    Spacer()
                                    VStack {
                                       Spacer()
                                        MessageBubbleView(employee1: "Hi, do we still have a meeting at 10?", employee2: "Yes, we do. See you then.", bottomPadding: 10, topPadding: 10, employee2BottomPad: 100, employee2trailingPad: 150)
                                        

                                        TextField("Message", text: $vm.user)
                                            .font(.system(size: 16))
                                            .padding(.leading, 20)
                                            .frame(width: 350, height: 55, alignment: .center)
                                            .background(Color.black.opacity(0.3))
                                            .clipShape(RoundedRectangle(cornerRadius: 16.0, style: .continuous))

                                        HStack {
                                            ButtonView(name: "Send", buttonColor: Color.powerColor, buttonTextColor: .white, topPadding: 0)
                                                .padding(.trailing, 15)
                                            ButtonView(name: "Cancel", buttonColor: Color.otherGrey.opacity(0.1), buttonTextColor: .powerColor, topPadding: 0)
                                               
                                            Spacer()
                                        }
                                        .padding(.leading, 25)
                                        .padding(.trailing, 15)
                                        .padding(.bottom, 50)
                                    }
                                    .padding(.vertical, 100)
                                    .padding(.leading, 120)
                                   
                                } .padding(.leading, 50)
                            }
                             .padding(.horizontal, 50)
                        }
                    }label: {
                       
                            
                            Text("\(name.firstname) \(name.lastname)")
                                .font(.system(size: 16))
                        
                      
                    }.navigationViewStyle(.stack)
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
