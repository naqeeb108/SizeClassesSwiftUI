//
//  HomeBannerView.swift
//  SizeClassesSwiftUI
//
//  Created by Mac on 05/09/2022.
//

import Foundation
import SwiftUI

struct HomeBannerView: View {
    var type: DeviceType
    var width: Double
    var body: some View {
        ZStack {
            CustomRect(size: CGSize(width: width, height: 150), cornerRadius: 15, foregroundColor: .green)
            
            HStack {
                VStack(alignment: .leading, spacing: type == .iPad ? 9 : 4) {
                    
                    CustomText(text: "Explore Latest", fontSize: 25, fontWeight: .bold, textColor: .white)
                    CustomText(text: "Bikes with price", fontSize: 17, fontWeight: .regular, textColor: .white)
                    
                    Button {
                        //do nothing for now
                    } label: {
                        
                        ZStack {
                            CustomRect(size: CGSize(width: type == .iPad ? 200 : 100,
                                                    height: type == .iPad ? 45 : 38),
                                       cornerRadius: type == .iPad ? 18 : 12,
                                       foregroundColor: .white)
                            CustomText(text: "Explore", fontSize: 16, fontWeight: .heavy, textColor: .green)
                        }
                        .padding(.top)
                    }
                }
                .padding()
                Spacer()
            }
            .padding()
            
        }
        .padding([.leading,.trailing])
    }
}
