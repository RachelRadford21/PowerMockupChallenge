//
//  DismissViewAllEmployeesView.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/20/23.
//

import SwiftUI

struct DismissSheetView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        // Dismiss sheet. Can use in any orientation but useful for landscape
        RoundedRectangle(cornerRadius: 20)
                       .frame(width: 50, height: 3, alignment: .center)
                       .foregroundColor(.lightGrey)
                       .padding(.top, 20)
                       .onTapGesture {
                           DispatchQueue.main.async {
                               dismiss()
                           }
                           
                       }
    }
}

struct DismissViewAllEmployeesView_Previews: PreviewProvider {
    static var previews: some View {
        DismissSheetView()
            
    }
}
