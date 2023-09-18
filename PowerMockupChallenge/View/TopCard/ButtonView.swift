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
            }.frame(width: 150, height: 40, alignment: .center)
                .foregroundColor(buttonTextColor)
                .background(buttonColor)
                .cornerRadius(6)
                .padding(.top, topPadding)
        }
    }
}

//struct ButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonView()
//    }
//}
