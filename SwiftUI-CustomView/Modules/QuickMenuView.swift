//
//  QuickMenuView.swift
//  SwiftUI-CustomView
//
//  Created by Mario Juni on 2/9/21.
//

import SwiftUI

struct QuickMenuView: View {
    
    @Binding var isVisible: Bool
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                ZStack(alignment: .bottom ) {
                    
                    QuickMenuShape()
                        .stroke(Color("primary_color"), lineWidth: 3.0)
                   
                        .frame(height: geometry.size.height * (geometry.size.height < 700 ? 0.32 : 0.29))
                    
                    QuickMenuShape()
                        .fill(Color.white)
                        .frame(height: geometry.size.height * (geometry.size.height < 700 ? 0.32 : 0.29))
                        .shadow(color: Color.black.opacity(0.3), radius: 3, x: 0, y: 1)
                    
                    let menuItems =  [[QuickMenuItem(menu: .requestVolumeBoost),
                                 QuickMenuItem(menu: .payMybill),
                                 QuickMenuItem(menu: .paperless),
                                 QuickMenuItem(menu: .empty)],
                                [QuickMenuItem(menu: .help),
                                 QuickMenuItem(menu: .repair),
                                 QuickMenuItem(menu: .trackMyRepair),
                                 QuickMenuItem(menu: .status)]]
                    
                    VStack(spacing:  geometry.size.width * 0.1 ){
                        Spacer().frame(height: geometry.size.height * 0.01)
                        let firstArr = menuItems
                        ForEach(0..<firstArr.endIndex) { index in
                            HStack ( alignment: .top , spacing : geometry.size.width * 0.1  ) {
                                let secondArr = firstArr[index]
                                ForEach(0..<secondArr.endIndex){ secIndex in
                                    Button(action: {
                                        
                                    }) {
                                        VStack(alignment: .center, spacing: 10 ){
                                            Image((secondArr[secIndex].menu.value.img)).renderingMode(.original).frame(height: geometry.size.height * 0.02)
                                            Text((secondArr[secIndex].menu.value.label))
                                                .font(.custom("FS Elliot Pro Bold", size: 10))
                                                .fontWeight(.bold)
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(Color("text_color"))
                                                .opacity(0.7)
                                        }
                                    }
                                }
                            }
                        }
                        Spacer().frame(height: geometry.size.height * 0.01)
                    }
                    .offset(x: 0 ,y:  -(geometry.size.height * 0.05) )
                    
                    Button(action: {
                        isVisible.toggle()
                    }) {
                        Image("ic_close").renderingMode(.original).padding(10)
                    }
                }
            }
        }
    }
}

struct QuickMenuItem {
    var id = UUID()
    var menu: QuickMenuItemEnum
}

enum QuickMenuItemEnum {
    case prepaid
    case postpaid
    case requestVolumeBoost
    case payMybill
    case paperless
    case repair
    case trackMyRepair
    case status
    case help
    case empty
    
    var value:(label:String,img :String){
        switch  self  {
            case .prepaid:
                return ("Prepaid" , "ic_tabitem_center")
            case .postpaid :
                return ("Prepaid" , "ic_tabitem_center")
            case .requestVolumeBoost:
                return ("Request\n Volume Boost" , "ic_quickmenu_volume_boost")
            case .payMybill:
                return ("Pay my Bill", "ic_quickmenu_pay_bill")
            case .paperless:
                return ("Go Paperless \nBilling", "ic_quickmenu_paperless_billing")
            case .help:
                return("Help", "ic_quickmenu_help")
            case .repair:
                return("Repair my \nInternet", "ic_quickmenu_repair_internet")
            case .trackMyRepair:
                return("Track my \nRepair" , "ic_quickemenu_track_repair")
            case .status:
                return("Service \nStatus", "ic_quickmenu_service_status")
            case .empty:
                return ("" , "")
        }
    }
}


struct QuickMenuShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let cornerRadius: CGFloat = 15
        let concaveCornerRadius: CGFloat = 20
        let concaveCenterRadius: CGFloat = 28
        
        let h = rect.size.height
        let w = rect.size.width
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        path.addLine(to: CGPoint(x: 0.0 , y: h -  concaveCenterRadius * 2 - cornerRadius / 2  ))
        
        // left corner view radius
        path.addArc(center: CGPoint(x: cornerRadius, y: h -  concaveCenterRadius * 2 - cornerRadius / 2), radius:  cornerRadius, startAngle: .init(degrees: 180.0), endAngle: .init(degrees: 90.0), clockwise: true)
        
        // left concave radius
        path.addArc(center: CGPoint(x: w / 2 - concaveCenterRadius - concaveCornerRadius  , y:  h -  concaveCenterRadius), radius: concaveCornerRadius , startAngle: .init(degrees: 270), endAngle: .init(degrees: 0), clockwise: false)
        
        // center concave radius
        path.addArc(center: CGPoint(x: w / 2   , y: h -  concaveCenterRadius ), radius: concaveCenterRadius, startAngle: .init(degrees: 180), endAngle: .init(degrees: 0.0 ), clockwise: true)
        
        // right concave radius
        path.addArc(center: CGPoint(x: w / 2 + concaveCenterRadius + concaveCornerRadius, y: h -  concaveCenterRadius ), radius: concaveCornerRadius, startAngle: .init(degrees: 180), endAngle: .init(degrees: 270 ), clockwise: false)
        
        // left corner view radius
        path.addArc(center: CGPoint(x: w - cornerRadius, y:  h -  concaveCenterRadius * 2 - cornerRadius / 2), radius:  cornerRadius, startAngle: .init(degrees: 90), endAngle: .init(degrees: 0.0), clockwise: true)
        
        path.addArc(center:  CGPoint(x: w - cornerRadius, y: 0.0 ), radius: cornerRadius, startAngle: .init(degrees: 0), endAngle: .init(degrees: 270), clockwise: true)
        
        path.addArc(center:  CGPoint(x: cornerRadius, y: 0.0 ), radius: cornerRadius, startAngle: .init(degrees: 270.0), endAngle: .init(degrees: 180), clockwise: true)
        return path
    }
}

struct QuickMenuView_Previews: PreviewProvider {
    static var previews: some View {
        QuickMenuView(isVisible: .constant(true))
    }
}


