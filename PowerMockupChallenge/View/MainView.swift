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
 
 GeoReader is expensive so I try to use it sparingly
 */
struct MainView: View {
    @EnvironmentObject var vm: ViewModel
    var body: some View {
        GeometryReader { geo in
            if geo.size.height > geo.size.width {
                // Portrait View
                VStack {
                    CardView(width: geo.size.width / 1.08, height: geo.size.height / 2.09, colorChoice: .white)
                        .overlay {
                            TopCardView()
                            
                        }
                    Spacer()
                    VStack {
                        CardView(width: geo.size.width / 1.08, height: geo.size.height / 2.0, colorChoice: .white)
                            .overlay{
                                VStack {
                                    BottomCardView()
                                    
                                    
                                }
                            }
                    }
                }
                .padding(.leading, 15)
                .shadow(radius: 6)
            }
            else if geo.size.width > geo.size.height {
                // Landscape View
                ScrollView {
                    VStack(spacing: 20) {
                        HStack(spacing: -20) {
                            CardView(width: geo.size.width / 2.00, height: geo.size.height / 1.025, colorChoice: .white)
                                .overlay{
                                    TopCardView()
                                        .padding(.trailing, 20)
                                    
                                }
                        
                        Spacer()
                       
                            CardView(width: geo.size.width / 2.00, height: geo.size.height / 1.025, colorChoice: .white)
                                .overlay{
                                    VStack {
                                        BottomCardView()
                                        
                                    }
                                }
                        }
                        .padding(.top)
                    }
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
