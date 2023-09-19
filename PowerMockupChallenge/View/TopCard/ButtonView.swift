//
//  ButtonView.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/16/23.
//

import SwiftUI

struct ButtonView: View {
    @EnvironmentObject var vm: ViewModel
    var name = ""
    var buttonColor: Color = Color.powerColor
    var buttonTextColor: Color = .white
    var topPadding: CGFloat = 250
    var body: some View {
        HStack {
            Button(name) {
                if name == "Follow" {
                    vm.followers += 1
                }
                if name == "Message" {
                    vm.isMessageButtonPressed.toggle()
                }
            }.frame(width: 150, height: 40, alignment: .center)
                .font(.system(size: 14))
                .fontWeight(.semibold)
                .foregroundColor(buttonTextColor)
                .background(buttonColor)
                .cornerRadius(6)
                .padding(.top, topPadding)
                .sheet(isPresented: $vm.isMessageButtonPressed) {
                    MessageView()
                }
            
        }
    }
}

//struct ButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonView()
//    }
//}
