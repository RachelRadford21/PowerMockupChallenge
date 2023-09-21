//
//  PowerIconView.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/16/23.
//

import SwiftUI

struct PowerIconView: View {
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    var alignmentChoice: Alignment = .topLeading
//    var trailingPadding: CGFloat = 00
//    var bottomPadding: CGFloat = 0
    
    var body: some View {
        
        HStack {
            Image("1676290149155")
                .resizable()
                .cornerRadius(10)
        }.padding(0)
        .frame(width: width, height: height, alignment: alignmentChoice)
            
    }
}

struct PowerIconView_Previews: PreviewProvider {
    static var previews: some View {
        PowerIconView()
         
           
    }
}
