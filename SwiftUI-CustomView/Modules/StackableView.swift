//
//  StackableView.swift
//  SwiftUI-CustomView
//
//  Created by Mario Juni on 2/15/21.
//

import SwiftUI

struct StackableView: View {
    var body: some View {
        LazyVStack {
            HStack(alignment: .center ) {
                ZStack (alignment: .leading) {
                    HStack {
                        Image("ic_gift").frame(width: 40, height: 40)
                        VStack (alignment:.leading , spacing: 3) {
                            
                            Text("Claim your FREE 10GB")
                                .font(.custom("FS Elliot Pro", size: 16))
                                .foregroundColor(Color(hex:"193B65"))
                                .fontWeight(.bold)
                            Text("Thanks for verifying your modem!")
                                .font(.custom("FS Elliot Pro", size: 12))
                                .foregroundColor(Color(hex:"193B65"))
                                .opacity(0.8)
                        }
                        Spacer()
                        
                        Button(action: {}, label: {
                            Image("ic_forward")
                        })
                        
                    }.zIndex(1)
                    .padding(20)
                    Rectangle()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .cornerRadius(20)
                        .foregroundColor(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color("primary_color"), lineWidth: 2)
                        )
                }
            }
            .padding([.top,.bottom],5)
            .padding([.leading,.trailing],20)
        }
    }
}

struct StackableView_Previews: PreviewProvider {
    static var previews: some View {
        StackableView()
    }
}
