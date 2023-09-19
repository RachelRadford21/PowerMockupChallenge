//
//  MessageBubbleView.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/19/23.
//

import SwiftUI

struct MessageBubbleView: View {
    var employee1 = "Hi, do we still have a meeting at 10?"
    var employee2 = "Yes, we do. See you then."
    var body: some View {
        Text(employee1)
            .font(.system(size: 16))
            .frame(width: 200, height: 50)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(20)
            .padding(.trailing, -150)
            .padding(.bottom, 20)
        Text(employee2)
            .font(.system(size: 16))
            .frame(width: 200, height: 50)
            .foregroundColor(.white)
            .background(Color.lightGrey)
            .cornerRadius(20)
            .padding(.trailing, 150)
            .padding(.bottom, 300)
            .overlay {
               Text("👍🏼")
                    .font(.system(size: 30))
                    .position(x: 15, y: -2)
            }
    }
}

struct MessageBubbleView_Previews: PreviewProvider {
    static var previews: some View {
        MessageBubbleView()
    }
}
