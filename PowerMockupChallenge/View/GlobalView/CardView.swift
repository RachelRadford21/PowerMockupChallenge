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
            .frame(width: width, height: height)
            .foregroundColor(colorChoice)
            .cornerRadius(2)

    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            
            
    }
}
