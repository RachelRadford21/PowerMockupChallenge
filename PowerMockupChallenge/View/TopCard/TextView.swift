//
//  TitleView.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/16/23.
//

import SwiftUI

struct TextView: View {

    var title = ""
    var bottomPadding: CGFloat = 280
    var topPadding: CGFloat = 0
    var leadingPadding: CGFloat = 0
    var trailingPadding: CGFloat = 0
    var textSize: CGFloat = 22
    var textColor: Color = .black
    var body: some View {
        
        Text("\(title)")
            .foregroundColor(textColor)
            .font(.system(size: textSize))
            .padding(.bottom, bottomPadding)
            .padding(.top, topPadding)
            .padding(.leading, leadingPadding)
            .padding(.trailing, trailingPadding)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
            
    }
}
