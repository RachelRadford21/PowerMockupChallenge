//
//  SocialMediaStats.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/16/23.
//

import SwiftUI

struct SocialMediaStatsView: View {
    @EnvironmentObject var vm: ViewModel
    var employees = 1068
    var textSize: CGFloat = 16
    var bottomPadding: CGFloat = 100
    var leadingPadding: CGFloat = 60
    var topPadding: CGFloat = 25
    var body: some View {
        
        HStack {
            HStack {
                // Used environmentobject so the count would update on button click
                // The file says font is 16 but it to large here. Which is fine except in landscape it moves to far to the right.
                // This is probably cause by the the text being one line in Figma
                Text("\(vm.followers)")
                    .foregroundColor(Color.customTextColor)
                    .font(.system(size: textSize, weight: .bold))
                Text("Followers")
                    .font(Font.custom("Proxima Nova", size: 14)
                        .weight(.bold)
                    )
                    .foregroundColor(.topTextlightGrey)
                    
                
            }.padding(.bottom, bottomPadding)
            .padding(.trailing, 5)
            HStack {
                Text("\(employees)")
                    .foregroundColor(Color.customTextColor)
                    .font(.system(size: textSize, weight: .bold))
                Text("Employees")
                    .font(Font.custom("Proxima Nova", size: 14)
                        .weight(.bold)
                    )
                    .foregroundColor(.topTextlightGrey)
            }.padding(.bottom, bottomPadding)
            
        }.padding(.leading, leadingPadding)
            .padding(.top, topPadding)
        
    }
}

//struct SocialMediaStats_Previews: PreviewProvider {
//    static var previews: some View {
//        SocialMediaStatsView(followers: .constant(1))
//    }
//}
