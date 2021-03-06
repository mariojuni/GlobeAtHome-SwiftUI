//
//  ContentView.swift
//  SwiftUI-CustomView
//
//  Created by Mario Juni on 2/5/21.
//

import SwiftUI

struct ContentView: View {
    @State var quickMenuShow: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                ZStack {
                    HomeScreen()
                    
                    ZStack(alignment: .bottom ) {
                        HStack(alignment: .bottom ) {
                            Spacer().frame(width: geometry.size.width * 0.1)
                            QuickMenuView(isVisible: $quickMenuShow)
                            Spacer().frame(width: geometry.size.width * 0.1)
                        }.zIndex(1)
                        .offset(y: -20)
                        .hidden(!quickMenuShow)
                        
                        BottomBarView()
                            .frame(width: geometry.size.width, height: 55)
                            .background(ConcaveShapeView())
                        
                        Button( action: {
                            quickMenuShow.toggle()
                        }){
                            Image("ic_tabitem_center").renderingMode(.original).padding(20)
                        }
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: 1)
                        .offset(y:-20)
                        .hidden(quickMenuShow)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}
