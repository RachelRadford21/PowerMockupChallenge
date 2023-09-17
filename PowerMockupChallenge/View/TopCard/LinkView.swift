//
//  LinkView.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/16/23.
//

import SwiftUI

struct LinkView: View {
    var title = ""
    var bottomPadding: CGFloat = 20
    var topPadding: CGFloat = 5
    var leadingPadding: CGFloat = 0
    var trailingPadding: CGFloat = 20
    var textSize: CGFloat = 14
    var textColor: Color = Color.linkColor
    var body: some View {
        Link(title, destination: URL(string: "https://powerhrg.com")!)
            .foregroundColor(textColor)
            .padding(.top, topPadding)
            .padding(.bottom, bottomPadding)
            .padding(.trailing, trailingPadding)
            .font(.system(size: textSize))
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView()
    }
}
