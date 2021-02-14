//
//  ConnectionAlertView.swift
//  SwiftUI-CustomView
//
//  Created by Mario Juni on 2/14/21.
//

import SwiftUI

struct ConnectionAlertView: View {
    var body: some View {
        LazyVStack {
            HStack {
                ZStack {
                    HStack(alignment: .top , spacing: 20){
                        Image("ic_no_internet")
                        VStack(alignment: .leading, spacing: 8) {
                            Text("No Internet connection detected")
                                .font(.custom("FS Elliot Pro", size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                            Text("You can check if there are any outages for free using your mobile data.")
                                .font(.custom("FS Elliot Pro", size: 12))
                                .foregroundColor(Color.white)
                            
                            Button(action: {}, label: {
                                Text("CHECK OUTAGES")
                                    .font(.custom("FS Elliot Pro Heavy", size: 14))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                            })
                        }
                    }.zIndex(1)
                    .padding( 20)
                    Rectangle()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .cornerRadius(15.0)
                        .foregroundColor(Color(hex:"DA4D53"))
                }
            }.padding([.top,.bottom],5)
            .padding([.leading,.trailing],20)
            .shadow(color: Color(hex:"DA4D53").opacity(0.7), radius: 7, x: 0, y: 1)
        }
    }
}

struct ConnectionAlertView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectionAlertView()
    }
}
