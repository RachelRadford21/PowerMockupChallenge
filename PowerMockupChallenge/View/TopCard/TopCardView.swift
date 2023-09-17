//
//  TopCardView.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/16/23.
//

import SwiftUI

struct TopCardView: View {
    @EnvironmentObject var vm: ViewModel
    var body: some View {
        
        VStack {
            HStack {
                
                PowerIconView(width: 79, height: 96, alignmentChoice: .topLeading, trailingPadding: 0, bottomPadding: 250)
                
                TextView(title: "Power HRG", bottomPadding: 330, topPadding: 0, leadingPadding: 10, trailingPadding: 50, textSize: 22, textColor: .black)
                    .bold()
            
                TextView(title: "Company", bottomPadding: 330, topPadding: 0, leadingPadding: -20, trailingPadding: 35, textSize: 13, textColor: Color.otherGrey)
                    .bold()
                    
                
                
            }
            .padding(.top, 30)
                .overlay {
                    VStack {
                        TextView(title: "TECHNOLOGY", bottomPadding: 140, topPadding: 20, leadingPadding: 30, trailingPadding: 85, textSize: 12, textColor: Color.lightGrey)
                            .kerning(0.84)
                        
                        LinkView(title: "Visit Power", bottomPadding: 120, topPadding: -140, leadingPadding: 0, trailingPadding: 70, textSize: 14)
                    }
                    SocialMediaStatsView(employees: 1068, textSize: 16, bottomPadding: 165, leadingPadding: 85, topPadding: 25)
            
                }.overlay {
                    TextView(title: "About", bottomPadding: 50, topPadding: 10, leadingPadding: 0, trailingPadding: 250, textSize: 16, textColor: .black)
                        .bold()

                     TextView(title: """
                                    As the highest-rated residential remodeler in
                                    the nation, our international technology team
                                    builds a custom suite of products that
                                    continuously transform our business.
                                    """, bottomPadding: 10, topPadding: 90, leadingPadding: 10, trailingPadding: 0, textSize: 15, textColor: Color.lightGrey)
                                        .multilineTextAlignment(.leading)
                                        .lineLimit(5)
                }
                .overlay {
                    VStack {
                        HStack {
                            ButtonView(name: "Follow", buttonColor: Color.powerColor, buttonTextColor: .white, topPadding: 250)
                                .environmentObject(vm)
                            ButtonView(name: "Message", buttonColor: Color.otherGrey.opacity(0.1), buttonTextColor: Color.powerColor, topPadding: 250)

                       }
                    }
                }
            
        }
        
    }
}

//struct TopCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopCardView()
//    }
//}
