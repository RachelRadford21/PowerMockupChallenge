//
//  MainView.swift
//  PowerMockupChallenge
//
//  Created by Rachel Radford on 9/16/23.
//

import SwiftUI
//MARK: Comments
/*
 MainView is where all the components for the entire mockup will be housed.
 I like to build it out and then start seperating components out
 
 GeoReader is expensive so I try to use it sparingly
 */
struct MainView: View {
    @ObservedObject var vm: ViewModel = ViewModel()
    var body: some View {
        GeometryReader { geo in
            if geo.size.height > geo.size.width {
                // Portrait View
                VStack {
                    CardView(width: geo.size.width / 1.08, height: geo.size.height / 2.09, colorChoice: .white)
                        .overlay {
                            TopCardView()
                        }
                    VStack {
                        CardView(width: geo.size.width / 1.08, height: geo.size.height / 2.0, colorChoice: .white)
                            .overlay{
                                VStack {
                                    Text("Placeholder")
                                }
                            }
                    }
                }
                .padding(.leading, 15)
                .shadow(radius: 6)
            }
            else if geo.size.width > geo.size.height {
                // Landscape View
                VStack(spacing: 20) {
                    HStack(spacing: -20) {
                        CardView(width: geo.size.width / 2.00, height: geo.size.height / 1.025, colorChoice: .white)
                            .shadow(radius: 6)
                            .overlay{
                                TopCardView()
                                
                            }
                        Spacer()
                        CardView(width: geo.size.width / 2.00, height: geo.size.height / 1.025, colorChoice: .white)
                            .shadow(radius: 6)
                            .overlay{
                                VStack {
                                    Text("Placeholder")
                                }
                            }
                    }
                    .padding(.top)
                    
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(ViewModel())
    }
}
