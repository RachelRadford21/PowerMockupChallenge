//
//  PowerHomeHeadlineView.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/21/23.
//

import SwiftUI

struct PowerHomeHeadlineView: View {
    var bottomPadding: CGFloat = 280
    var topPadding: CGFloat = 0
    var leadingPadding: CGFloat = 0
    var trailingPadding: CGFloat = 0
    var body: some View {
        
        HStack {
            Text("Power HRG")
                .font(Font.custom("Proxima Nova", size: 22)
                    .weight(.bold)
                )
                .foregroundColor(.customTextColor)
             
            Text("COMPANY")
                .font(Font.custom("Proxima Nova", size: 11)
                    .weight(.bold)
                )
                .foregroundColor(.textBackgroundColor)
                
        }
        .padding(.vertical, 0)
        .frame(height: 15, alignment: .center)
        
    }
}

struct PowerHomeHeadlineView_Previews: PreviewProvider {
    static var previews: some View {
        PowerHomeHeadlineView()
    }
}
