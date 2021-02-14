//
//  SuggestionView.swift
//  SwiftUI-CustomView
//
//  Created by Mario Juni on 2/15/21.
//

import SwiftUI

struct SuggestionView: View {
    var body: some View {
        LazyVStack (alignment: .leading , spacing: 5) {
            Text("You might want to")
                .foregroundColor(Color(hex:"193B65"))
                .font(.custom("FS Elliot Pro", size: 17))
                .opacity(0.8)
                .padding(.top , 10)
                .padding(.leading , 20)
            ScrollView(.horizontal){
                LazyHStack {
                    ForEach(0..<4) { _ in
                        LazyHStack {
                            ZStack {
                                HStack {
                                    Image("ic_top_up")
                                    VStack(alignment: .leading , spacing: 5) {
                                        Text("Top Up HomeSURF15")
                                            .font(.custom("FS Elliot Pro", size: 14))
                                            .foregroundColor(Color(hex:"193B65"))
                                            .fontWeight(.bold)
                                        Text("PHP 15.00")
                                            .foregroundColor(Color(hex:"193B65"))
                                            .font(.custom("FS Elliot Pro", size: 12))
                                            .opacity(0.7)
                                    }
                                }.zIndex(1)
                                .padding(8)
                                .padding([.leading,.trailing],20)
                            } .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color("primary_color"), lineWidth: 2)
                            ).padding([.top,.bottom],10)
                            .padding([.leading, . trailing],5)
                        }
                    }
                }
            }.padding(.trailing, 20)
        }
    }
}//193B65

struct SuggestionView_Previews: PreviewProvider {
    static var previews: some View {
        SuggestionView()
    }
}
