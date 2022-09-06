//
//  CustomRect.swift
//  SizeClassesSwiftUI
//
//  Created by Mac on 05/09/2022.
//

import Foundation
import SwiftUI

struct CustomRect: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var type: DeviceType {
        get {
            DeviceType.getdeviceType(horizontal: horizontalSizeClass!, vertical: verticalSizeClass!)
        }
    }
    var size: CGSize
    var cornerRadius: Double
    var foregroundColor: Color
    
    var body: some View {
        Rectangle()
            .frame(width: size.width, height: type == .iPad ? size.height * 1.6 : size.height)
            .cornerRadius(cornerRadius)
            .foregroundColor(foregroundColor)
    }
}
