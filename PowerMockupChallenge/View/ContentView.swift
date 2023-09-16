//
//  ContentView.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/16/23.
//

import SwiftUI

//MARK: Comments:
/*
  This view shows an opening view and then transitions to the landing page
*/

struct ContentView: View {
    @State private var isActive = false
    @EnvironmentObject var vm: ViewModel
    var body: some View {
        
        
        ZStack {
            if vm.isActive {
               MainView()
            }else {
                ZStack {
                    Color.openingViewBackground
                        .ignoresSafeArea()
                    PowerIconView(width: 200, height: 200, alignmentChoice: .center, trailingPadding: 0, bottomPadding: 0)
                }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    vm.isActive = true
                }
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ViewModel())
            
    }
}
