//
//  TopCardView.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/16/23.
//

import SwiftUI
//MARK: Comments
/*
  This file houses all the components that make up the top card
*/
struct TopCardView: View {
    @EnvironmentObject var vm: ViewModel
   
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 0) {
            HStack(alignment: .top, spacing: 10) {

                PowerIconView(width: 79, height: 96, alignmentChoice: .topLeading)
                    
                TextView(title: "Power HRG", bottomPadding: 0, topPadding: 0, leadingPadding: 0, trailingPadding: 60, textSize: 22, textColor: .customTextColor )
                    .fontWeight(.bold)
                   
                TextView(title: "COMPANY", bottomPadding: 0, topPadding: 5, leadingPadding: -60, trailingPadding: 60, textSize: 11, textColor: .topTextlightGrey)
                    .fontWeight(.bold)

            }.padding(.top, 40)
            .padding(.leading)
            .frame(width: 475, height: 400, alignment: .top)
            .overlay {
                    VStack {
                        TextView(title: "TECHNOLOGY", bottomPadding: 140, topPadding: 30, leadingPadding: 20, trailingPadding: 85, textSize: 12, textColor: Color.topTextlightGrey)
                            .fontWeight(.semibold)
                            .kerning(0.84)
                        // This link will go to Power's website
                        LinkView(title: "Visit Power", bottomPadding: 120, topPadding: -140, leadingPadding: 0, trailingPadding: 85, textSize: 14)
                           
                    }.padding(.leading)
                // The file says font is 16 but it to large here
                        SocialMediaStatsView(employees: 1068, textSize: 16, bottomPadding: 165, leadingPadding: 95, topPadding: 25)

               }.overlay {
                   VStack(alignment: .leading) {
                       TextView(title: "About", bottomPadding: 5, topPadding: 10, leadingPadding: 10, trailingPadding: 0, textSize: 16, textColor: .customTextColor)
                           .fontWeight(.bold)
                       HStack {
                           TextView(title: """
                                    As the highest-rated residential remodeler in
                                    the nation, our international technology team
                                    builds a custom suite of products that
                                    continuously transform our business.
                                    """, bottomPadding: 25, topPadding: 0, leadingPadding: 10, trailingPadding: 15, textSize: 16, textColor: Color.topTextlightGrey)
                           .multilineTextAlignment(.leading)
                           .lineSpacing(3)
                           .lineLimit(5)
                       }
                   }.padding(.top, 50)
                       .padding(.leading)
                }
                .overlay {
                    VStack {
                        HStack {
                            // This button will add one follower on click
                            ButtonView(name: "Follow", buttonColor: Color.powerColor, buttonTextColor: .white, topPadding: 250)
                            Spacer()
                            // This button will take user to the MessageView
                            ButtonView(name: "Message", buttonColor: Color.otherGrey.opacity(0.1), buttonTextColor: Color.powerColor, topPadding: 250)


                        }
                        .padding(.horizontal, 80)
                    }
                    }

        }
        
    }
}

struct TopCardView_Previews: PreviewProvider {
    static var previews: some View {
        TopCardView()
            .environmentObject(ViewModel())
            
    }
}
