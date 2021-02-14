//
//  HomeView.swift
//  SwiftUI-CustomView
//
//  Created by Mario Juni on 2/12/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    ZStack( alignment: .center) {
                        HStack{
                            VStack(alignment: .leading ,spacing : 8){
                                Group {
                                    Text("Good Morning!")
                                        .font(.custom("FS Elliot Pro ", size: 14))
                                    
                                    Text("Mario Juni")
                                        .font(.custom("FS Elliot Pro", size: 25))
                                        .fontWeight(.bold)
                                }
                                .foregroundColor(Color(hex:"1A5182").opacity(1))
                            }
                        }.padding(32)
                        .zIndex(1)
                        .frame(width: geometry.size.width, alignment: .topLeading)
                        
                        Image("img_home_bg")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geometry.size.width, height:  geometry.size.height * 0.3, alignment: .top)
                        
                    }
                    
                    let byHeight = geometry.size.height < 700 ? 0.13 : 0.075
                    Spacer().frame(height: geometry.size.height * CGFloat(byHeight))
                
                    ConnectionAlertView()
                    DataCardView()
                    SuggestionView()
                    StackableView()
                    ZStack {
                        VStack (spacing: 0) {
                            Rectangle().fill(Color(hex: "CAD6E8")).frame(height: 5)
                                .foregroundColor(.black)
                            Rectangle()
                                .foregroundColor(Color(hex: "DEE6F3"))
                                .frame(width: geometry.size.width, height: 200)
                        }
                        
                     //   SnapCarousel()
                    }
                    HelpAndSupportView()
                }
                Spacer().padding(.bottom, 60)
            }.ignoresSafeArea(.all, edges: .top)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
