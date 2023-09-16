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
                    VStack {
                        CardView(width: geo.size.width / 1.08, height: geo.size.height / 2.35, colorChoice: .white)
                            .overlay{
                                VStack {
                                    HStack {
                                        
                                        PowerIconView(width: 79, height: 96, alignmentChoice: .topLeading, trailingPadding: 10, bottomPadding: 200)
                                        TextView(title: "Power HRG", bottomPadding: 280, topPadding: 0, leadingPadding: 0, trailingPadding: 0, textSize: 22, textColor: .black)
                                            .bold()
                                        TextView(title: "Company", bottomPadding: 280, topPadding: 0, leadingPadding: 5, trailingPadding: 5, textSize: 13, textColor: Color.otherGrey)
                                            .bold()
                                        
                                        
                                    }.padding(.top, 30)
                                        .overlay {
                                            VStack {
                                                TextView(title: "TECHNOLOGY", bottomPadding: 0, topPadding: 40, leadingPadding: 0, trailingPadding: 5, textSize: 12, textColor: Color.lightGrey)
                                                    .kerning(0.84)
                                                LinkView()
                                                
                                            }
                                        }
                                    
                                }
                            }
                    }
                    .padding(.bottom, 10)
                    
                    VStack {
                        CardView(width: geo.size.width / 1.08, height: geo.size.height / 2.15, colorChoice: .white)
                            .overlay{
                                VStack {
                                    Text("Place holder")
                                }
                            }
                    }
                    
                }
                .padding(.leading, 15)
                .shadow(radius: 6)
            } else if geo.size.width > geo.size.height {
                // Landscape View
                
                VStack(spacing: 20) {
                    HStack(spacing: -20) {
                        CardView(width: geo.size.width / 2.00, height: geo.size.height / 1.025, colorChoice: .white)
                            .shadow(radius: 6)
                            .overlay{
                                VStack {
                                    HStack {
                                        
                                        PowerIconView(width: 79, height: 96, alignmentChoice: .topLeading, trailingPadding: 10, bottomPadding: 200)
                                        
                                        
                                        TextView(title: "Power HRG", bottomPadding: 280, topPadding: 0, leadingPadding: 0, trailingPadding: 0, textSize: 22, textColor: .black)
                                            .bold()
                                        TextView(title: "Company", bottomPadding: 280, topPadding: 0, leadingPadding: 5, trailingPadding: 5, textSize: 13, textColor: Color.otherGrey)
                                            .bold()
                                    }.padding(.top, 30)
                                        .overlay {
                                            VStack {
                                                TextView(title: "TECHNOLOGY", bottomPadding: 0, topPadding: 40, leadingPadding: 0, trailingPadding: 5, textSize: 12, textColor: Color.lightGrey)
                                                    .kerning(0.84)
                                                LinkView()
                                                
                                            }
                                        }
                                    
                                }
                            }
                        Spacer()
                        CardView(width: geo.size.width / 2.00, height: geo.size.height / 1.025, colorChoice: .white)
                            .shadow(radius: 6)
                            .overlay{
                                VStack {
                                    Text("Place holder")
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
