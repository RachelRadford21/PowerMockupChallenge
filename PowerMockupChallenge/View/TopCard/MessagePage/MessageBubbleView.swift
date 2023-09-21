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
    var bottomPadding: CGFloat = 20
    var topPadding: CGFloat = 5
    var leadingPadding: CGFloat = 0
    var trailingPadding: CGFloat = -150
    var employee2BottomPad: CGFloat = 300
    var employee2trailingPad: CGFloat = 150
    var body: some View {

            Text(employee1)
                .font(.system(size: 16))
                .frame(width: 200, height: 50)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(20)
                .padding(.trailing, trailingPadding)
                .padding(.bottom, bottomPadding)
                .padding(.top, topPadding)
            Text(employee2)
                .font(.system(size: 16))
                .frame(width: 200, height: 50)
                .foregroundColor(.white)
                .background(Color.topTextlightGrey)
                .cornerRadius(20)
                .padding(.trailing, employee2trailingPad)
                .padding(.bottom, employee2BottomPad)
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
