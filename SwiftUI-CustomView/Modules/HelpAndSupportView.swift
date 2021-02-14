//
//  HelpAndSupportView.swift
//  SwiftUI-CustomView
//
//  Created by Mario Juni on 2/15/21.
//

import SwiftUI

struct HelpAndSupportView: View {
    var body: some View {
             VStack {
                ZStack {
                    Image("ic_help_support_bg")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(minWidth: 0, maxWidth: .infinity).aspectRatio(contentMode: .fill)
                    ZStack(alignment:.trailing) {
                        Rectangle().frame(height:60)
                            .foregroundColor(Color.white)
                            .opacity(0.7)
                        Text("How can we help?").padding(.trailing, 20)
                            .font(.custom("FS Elliot Pro Bold", size: 18))
                            .foregroundColor(Color(hex:"193B65"))
                            .opacity(0.8)
                    }.zIndex(1)
                    .offset(y: -30)
            }
        }
    }
}

struct HelpAndSupportView_Previews: PreviewProvider {
    static var previews: some View {
        HelpAndSupportView()
    }
}
