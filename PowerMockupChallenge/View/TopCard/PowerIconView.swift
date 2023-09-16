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
    var trailingPadding: CGFloat = 20
    var bottomPadding: CGFloat = 250
    
    var body: some View {
        Image("1676290149155")
            .resizable()
            .frame(width: width, height: height, alignment: alignmentChoice)
            .cornerRadius(10)
            .padding(.trailing, trailingPadding)
            .padding(.bottom, bottomPadding)
    }
}

struct PowerIconView_Previews: PreviewProvider {
    static var previews: some View {
        PowerIconView()
           
    }
}
