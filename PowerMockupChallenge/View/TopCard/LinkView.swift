//
//  LinkView.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/16/23.
//

import SwiftUI

struct LinkView: View {
    var body: some View {
        Link("Visit Power", destination: URL(string: "https://powerhrg.com")!)
            .foregroundColor(Color.linkColor)
            .padding(.top, 5)
            .padding(.bottom, 210)
            .padding(.trailing, 20)
            .font(.system(size: 14))
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView()
    }
}
