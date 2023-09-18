//
//  UserIconView.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/17/23.
//

import SwiftUI

struct UserIconView: View {
    var initials = ""
    
    var body: some View {
        
       
            Text(initials)
                .frame(width: 50, height: 50)
                .foregroundColor(.white)
                .font(.system(size: 16))
                .background(
                    Circle()
                        .fill(Color.gray.opacity(0.4))
                )
                .padding(.trailing, 10)
        
    }
}

struct UserIconView_Previews: PreviewProvider {
    static var previews: some View {
        UserIconView()
    }
}
