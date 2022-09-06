//
//  HorizentalList.swift
//  SizeClassesSwiftUI
//
//  Created by Mac on 05/09/2022.
//

import Foundation
import SwiftUI

struct HorizentalList: View {
    var type: DeviceType
    var title: String
    let width: Double
    var body: some View {
        
        VStack {
            HStack {
                CustomText(text: title, fontSize: 18, fontWeight: .heavy, textColor: .black)
                Spacer()
                CustomText(text: "view all", fontSize: 17, textColor: .green)
            }
            .padding([.leading,.trailing], 25)
            .padding(.top)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 15) {
                    ForEach(1...10, id: \.self) { value in
                        BikeCardView(width: width)
                    }
                }
                .padding(.leading,15)
            }
            .frame(height: type == .iPad ? 220 * 1.6 : 220)
            .padding(5)
        }
    }
}

struct BikeCardView: View {
    let width: Double
    var body: some View {
        
        ZStack {
            CustomRect(size: CGSize(width: width, height: 220),
                       cornerRadius: 15,
                       foregroundColor: .gray.opacity(0.7))
            
            VStack {
                HStack {
                    Spacer()
                    ImageView(sfSymbolName: "heart",
                              frame: CGSize(width: 20, height: 20),
                              foregroundColor: .white)
                }
                .padding(.trailing)
                
                ImageView(assetImage: "bike", frame: CGSize(width: 140, height: 90))
                BikeDetailsView(width: width)
            }
        }
    }
}

struct BikeDetailsView: View {
    let width: Double
    var body: some View {
        ZStack(alignment: .leading) {
            CustomRect(size: CGSize(width: width - 20,height: 70),
                       cornerRadius: 6, foregroundColor: .white)
            
            VStack(alignment: .leading, spacing: 3) {
                CustomText(text: "YBR 125", fontSize: 14, fontWeight: .bold, textColor: .black)
                CustomText(text: "By Royel Enfield", fontSize: 12, textColor: .gray)
                CustomText(text: "some description", fontSize: 12, textColor: .gray)
                
            }
            .padding(.leading,8)
        }
    }
}
