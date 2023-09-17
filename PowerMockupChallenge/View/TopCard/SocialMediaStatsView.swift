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
                Text("\(vm.followers)").bold()
                    .font(.system(size: textSize))
                Text("Followers")
                    .foregroundColor(Color.lightGrey)
                    .font(.system(size: textSize))
                
            }.padding(.bottom, bottomPadding)
                .padding(.trailing, 5)
            HStack {
                Text("\(employees)").bold()
                    .font(.system(size: textSize))
                Text("Employees")
                    .foregroundColor(Color.lightGrey)
                    .font(.system(size: textSize))
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
