//
//  DataCardView.swift
//  SwiftUI-CustomView
//
//  Created by Mario Juni on 2/12/21.
//

import SwiftUI

struct DataCardView: View {
    var body: some View {
            LazyVStack {
                HStack(alignment: .center ) {
                    ZStack (alignment: .leading) {
                        HStack {
                            Image("ic_data").frame(width: 40, height: 40)
                            VStack (alignment:.leading , spacing: 3) {
                                Group {
                                    Text("Surf Away")
                                        .font(.custom("FS Elliot Pro", size: 16))
                                        .fontWeight(.bold)
                                    Text("You still got plenty of data left.")
                                        .font(.custom("FS Elliot Pro", size: 12))
                                }.foregroundColor(.white)
                            }
                            Spacer()
                            Group {
                                HStack {
                                    Text("356")
                                        .font(.custom("Barlow Regular", size: 29))
                                        .fontWeight(.bold)
                                    Text("GB \nLEFT")
                                        .font(.custom("FS Elliot Pro", size: 10))
                                        .fontWeight(.bold)
                                        .opacity(0.7)
                                }
                            }.foregroundColor(.white)
                        }.zIndex(1)
                        .padding(20)
                        Rectangle()
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .cornerRadius(15.0)
                            .foregroundColor(Color(hex:"007DEF"))
                    }
                }.padding([.top,.bottom],5)
                .padding([.leading,.trailing],20)
            }.shadow(color: Color(hex:"007DEF").opacity(0.7), radius: 7, x: 0, y: 1)
        }
}

struct DataCardView_Previews: PreviewProvider {
    static var previews: some View {
        DataCardView()
    }
}
