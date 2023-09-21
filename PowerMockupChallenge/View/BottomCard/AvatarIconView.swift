//
//  AvatarIconView.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/18/23.
//

import SwiftUI

struct AvatarIconView: View {
    @EnvironmentObject var vm: ViewModel
    var body: some View {
        Image("\(String(describing: vm.imageName))")
            .resizable()
            .frame(width: 45, height: 45)
            .padding(.trailing, 10)
    }
}

struct AvatarIconView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarIconView()
            .environmentObject(ViewModel())
    }
}
