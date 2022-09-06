//
//  TopHeaderView.swift
//  SizeClassesSwiftUI
//
//  Created by Mac on 05/09/2022.
//

import Foundation
import SwiftUI

struct TopHeaderView: View {
    var body: some View {
        HStack {
            
            ImageView(sfSymbolName: "square.grid.2x2", frame: CGSize(width: 22, height: 22))
            Spacer()
            CustomText(text: "Home", fontSize: 20, fontWeight: .heavy)
            Spacer()
            ImageView(sfSymbolName: "bell.badge.fill", frame: CGSize(width: 22, height: 25))
            
        }
        .padding()
    }
}
