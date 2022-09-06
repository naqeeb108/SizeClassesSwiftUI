//
//  √.swift
//  SizeClassesSwiftUI
//
//  Created by Mac on 05/09/2022.
//

import Foundation
import SwiftUI

struct CustomText: View {
   
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var type: DeviceType {
        get {
            DeviceType.getdeviceType(horizontal: horizontalSizeClass!, vertical: verticalSizeClass!)
        }
    }
    
    var text: String
    var fontSize: Double = 14
    var fontWeight: Font.Weight = .regular
    var textColor: Color = .black
    
    var body: some View {
        Text(text)
            .fontWeight(fontWeight)
            .foregroundColor(textColor)
            .font(.system(size: type == .iPad ? fontSize * 2 : fontSize))
    }
}
