//
//  AvatarIconView.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/18/23.
//

import SwiftUI

struct AvatarIconView: View {
    var imageName = "Avatar"
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 50, height: 50)
            .padding(.trailing, 10)
    }
}

struct AvatarIconView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarIconView()
    }
}
