//
//  BottomBarView.swift
//  SwiftUI-CustomView
//
//  Created by Mario Juni on 2/9/21.
//

import SwiftUI

struct BottomBarView: View {
    var body: some View {
        HStack{
            Spacer(minLength: 5)
            Button( action: {
            }){
                Image("ic_tabitem_home")
            }.foregroundColor(.none)
            
            Spacer(minLength: 5)
            
            Button( action: {
                
            }){
                Image("ic_tabitem_dashboard")
            }.foregroundColor(.none)
            
            Spacer().frame(width: 120)
            
            Button( action: {
                
            }){
                Image("ic_tabitem_rewards")
            }.foregroundColor(.none)
            Spacer(minLength: 5)
            
            Button( action: {
                
            }){
                Image("ic_tabitem_me")
            }.foregroundColor(.none)
            Spacer(minLength: 5)
        }.edgesIgnoringSafeArea(.bottom)
    }
}


struct ConcaveShapeView: View {
    var body: some View {
        Path { path in
            
            let concaveRadius: CGFloat = 40
            let marginTop: CGFloat = 1
            let upperConcaveCorner: CGFloat = 15
            
            let rect = UIScreen.main.bounds
            path.move(to: CGPoint(x: rect.minX, y: rect.minY))
            // left top to bottom
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
            // bottom to right
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            // bottom right to top right
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY + marginTop))
            
            // top right to left
            // upper right corner radius in concave
            path.addArc(center: CGPoint(x: rect.midX + concaveRadius + upperConcaveCorner, y: rect.minY + marginTop + upperConcaveCorner), radius: upperConcaveCorner, startAngle:  .init(degrees: 270) , endAngle: .init(degrees: 180), clockwise: true)
            
            // center concave
            path.addArc(center: CGPoint(x: rect.midX, y: rect.minY + marginTop + upperConcaveCorner - 6), radius: concaveRadius, startAngle: .init(degrees: 360), endAngle: .init(degrees: 180), clockwise: false)
            
            // upper left corner radius in concave
            path.addArc(center: CGPoint(x: rect.midX - concaveRadius - upperConcaveCorner, y: rect.minY + marginTop + upperConcaveCorner), radius: upperConcaveCorner, startAngle: .init(degrees: 0), endAngle: .init(degrees: 270), clockwise: true)
            
            path.addLine(to: CGPoint(x: rect.minX, y: rect.minY + marginTop))
        }.fill(Color.white)
        .shadow(color: Color.black.opacity(0.1), radius: 3, x: 0, y: 1)
    }
}
struct BottomBarView_Previews: PreviewProvider {
    static var previews: some View {
        BottomBarView()
    }
}
