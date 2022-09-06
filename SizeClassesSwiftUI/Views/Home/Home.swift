//
//  Home.swift
//  SizeClassesSwiftUI
//
//  Created by Mac on 04/09/2022.
//

import SwiftUI

struct Home: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var type: DeviceType {
        get {
            DeviceType.getdeviceType(horizontal: horizontalSizeClass!, vertical: verticalSizeClass!)
        }
    }
    
    var body: some View {
        
        GeometryReader { geometery in
            ScrollView(showsIndicators: false) {
                VStack {
                    
                    TopHeaderView()
                    
                    HStack {
                        VStack(alignment: .leading,spacing: 10) {
                            CustomText(text: "Hi Scott G!", fontSize: 30, fontWeight: .bold, textColor: .black)
                            CustomText(text: "Search your favourite bike here", fontSize: 17, fontWeight: .regular, textColor: .black)
                        }
                        Spacer()
                    }
                    .padding([.leading,.trailing], 40)
                    .padding([.top,.bottom])
                    
                    HomeBannerView(type: type, width: geometery.size.width - 60)
                    HorizentalList(type: type,
                                   title: "The most searched Bikes",
                                   width: numberOfItemsInRow(geometery: geometery))
                    
                    HorizentalList(type: type,
                                   title: "Recommended Bikes For You",
                                   width: numberOfItemsInRow(geometery: geometery))
                    
                    Spacer()
                }
                .background(Color.white
                                .edgesIgnoringSafeArea(.all))
            }
        }
    }
    
    func numberOfItemsInRow(geometery: GeometryProxy) -> Double {
        switch type {
        case .iPhonePortrait:
            return geometery.size.width / 2.3
        case .iPhoneLandScape:
            return geometery.size.width / 4.3
        case .iPhoneLandScapeMaxPlus:
            return geometery.size.width / 4.3
        case .iPad:
            return geometery.size.width / 3.3
        }
    }
}
