//
//  View+Hidden.swift
//  SwiftUI-CustomView
//
//  Created by Mario Juni on 2/7/21.
//

import Foundation
import SwiftUI

extension View {
    @ViewBuilder func hidden(_ shouldHide: Bool) -> some View {
        switch shouldHide {
        case true: self.hidden()
        case false: self
        }
    }
}
