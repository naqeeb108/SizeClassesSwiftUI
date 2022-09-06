//
//  Enums.swift
//  SizeClassesSwiftUI
//
//  Created by Mac on 06/09/2022.
//

import Foundation
import SwiftUI

enum DeviceType {
    case iPhonePortrait
    case iPhoneLandScape
    case iPhoneLandScapeMaxPlus
    case iPad
    
    static func getdeviceType(horizontal: UserInterfaceSizeClass, vertical: UserInterfaceSizeClass) -> DeviceType {
        print(horizontal,vertical)
        if horizontal == .compact && vertical == .regular {
            return .iPhonePortrait
        }
        if horizontal == .compact && vertical == .compact {
            return .iPhoneLandScape
        }
        if horizontal == .regular && vertical == .regular {
            return .iPad
        }
        if horizontal == .regular && vertical == .compact {
            return .iPhoneLandScapeMaxPlus
        }
        return .iPhonePortrait
    }
}
