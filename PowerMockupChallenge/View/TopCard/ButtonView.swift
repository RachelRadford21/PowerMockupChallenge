//
//  ButtonView.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/16/23.
//

import SwiftUI

struct ButtonView: View {
    @EnvironmentObject var vm: ViewModel
@State var isMessageButtonPressed = false
   
    var name = ""
    var buttonColor: Color = Color.powerColor
    var buttonTextColor: Color = .white
    var topPadding: CGFloat = 250
    var body: some View {
        HStack {
            Button(name) {
                buttonFunctions()
               
            }.frame(width: 150, height: 40, alignment: .center)
                .font(.system(size: 14))
                .fontWeight(.semibold)
                .foregroundColor(buttonTextColor)
                .background(buttonColor)
                .cornerRadius(6)
                .padding(.top, topPadding)
                .sheet(isPresented: $isMessageButtonPressed) {
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
