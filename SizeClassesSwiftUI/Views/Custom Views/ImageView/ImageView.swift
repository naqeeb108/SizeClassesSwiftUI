//
//  ImageView.swift
//  SizeClassesSwiftUI
//
//  Created by Mac on 05/09/2022.
//

import Foundation
import SwiftUI

struct ImageView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var type: DeviceType {
        get {
            DeviceType.getdeviceType(horizontal: horizontalSizeClass!, vertical: verticalSizeClass!)
        }
    }
    var assetImage: String?
    var sfSymbolName: String?
    var frame: CGSize
    var foregroundColor: Color? = nil
    
    var body: some View {
        imageView()
            .resizable()
            .frame(width: type == .iPad ? frame.width * 1.6 : frame.width, height: type == .iPad ?  frame.height * 1.6 : frame.height )
            .foregroundColor(foregroundColor)
    }
    func imageView() -> Image {
        return assetImage != nil ? Image(assetImage!) : Image(systemName: sfSymbolName!)
    }
}



