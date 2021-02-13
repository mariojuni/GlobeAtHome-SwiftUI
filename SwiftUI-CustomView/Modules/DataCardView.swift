//
//  DataCardView.swift
//  SwiftUI-CustomView
//
//  Created by Mario Juni on 2/12/21.
//

import SwiftUI

struct DataCardView: View {
    
    var body: some View {
            LazyVStack( spacing: 10) {
                HStack(alignment: .center ) {
                    ZStack (alignment: .leading) {
                        HStack(spacing: 10)  {
                            Image("ic_data").padding(.leading, 20)
                            VStack (alignment:.leading) {
                                Group {
                                    Text("Surf Away")
                                        .font(.custom("FS Elliot Pro", size: 16))
                                        .fontWeight(.bold)
                                    Text("You still got plenty of data left.")
                                        .font(.custom("FS Elliot Pro", size: 12))
                                }.foregroundColor(.white)
                                
                            }.padding(.trailing , 10)
                            
                            Group {
                                HStack {
                                    Text("356")
                                        .font(.custom("Barlow Regular", size: 30))
                                        .fontWeight(.bold)
                                    Text("GB \nLEFT")
                                        .font(.custom("FS Elliot Pro", size: 13))
                                        .fontWeight(.bold)
                                        .opacity(0.7)
                                }
                            }
                            .padding(.trailing, 20)
                            .foregroundColor(.white)
                        }.zIndex(1)
                        Rectangle()
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .frame(height: 100)
                            .cornerRadius(15.0)
                            .foregroundColor(Color(hex:"007DEF"))
                    }
                }.padding([.leading, .trailing], 20)
            }
            .shadow(color: Color(hex:"007DEF").opacity(0.7), radius: 10, x: 0, y: 1)
        }
}

struct DataCardView_Previews: PreviewProvider {
    static var previews: some View {
        DataCardView()
    }
}
