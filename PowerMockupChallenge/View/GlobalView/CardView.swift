//
//  CardView.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/16/23.
//

import SwiftUI

struct CardView: View {
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    var colorChoice: Color = .white
    
    var body: some View {
        Rectangle()
        // if this is hardcoded, it cannot grow and shrink with diff device sizes
  //          .frame(width: 378, height: 370, alignment: .topLeading)
            .frame(width: height, height: width, alignment: .topLeading)
            .foregroundColor(colorChoice)
            .cornerRadius(20)

    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
           
            
            
    }
}
