//
//  PreviewDataProvider.swift
//  Kids Acadmy
//
//  Created by Ankush Bhatia on 18/04/20.
//  Copyright © 2020 Ankush Bhatia. All rights reserved.
//

import Foundation
import SwiftUI

public struct PreviewDataProvider {

    public let device: PreviewDevice.Device
    public let colorScheme: ColorScheme
    public let locale: Locale
    public let layoutDirection: LayoutDirection
    public let id = UUID()

    public init(with device: PreviewDevice.Device,
         colorScheme: ColorScheme,
         locale: Locale,
         layoutDirection: LayoutDirection) {
        self.device = device
        self.colorScheme = colorScheme
        self.locale = locale
        self.layoutDirection = layoutDirection
    }
}

extension PreviewDevice {

    public enum Device: String {
        case mac = "Mac"
        case iPhone_7 = "iPhone 7"
        case iPhone_7_Plus = "iPhone 7 Plus"
        case iPhone_8 = "iPhone 8"
        case iPhone_8_Plus = "iPhone 8 Plus"
        case iPhone_SE = "iPhone SE"
        case iPhone_SE_2ndGen = "iPhone SR (2nd Generation)"
        case iPhone_X = "iPhone X"
        case iPhone_Xs = "iPhone Xs"
        case iPhone_XS_Max = "iPhone Xs Max"
        case iPhone_XR = "iPhone Xʀ"
        case iPad_Mini_4 = "iPad mini 4"
        case iPad_Air_2 = "iPad Air 2"
        case iPad_Pro_9_7_Inch = "iPad Pro (9.7-inch)"
        case iPad_Pro_12_9_Inch = "iPad Pro (12.9-inch)"
        case iPad_5th_Gen = "iPad (5th generation)"
        case iPad_Pro_12_9_Inch_2nd_Gen = "iPad Pro (12.9-inch) (2nd generation)"
        case iPad_Pro_10_5_Inch = "iPad Pro (10.5-inch)"
        case iPad_6th_Gen = "iPad (6th generation)"
        case iPad_Pro_11_Inch = "iPad Pro (11-inch)"
        case iPad_12_9_Inch_3rd_Gen = "iPad Pro (12.9-inch) (3rd generation)"
        case iPad_Mini_5th_Gen = "iPad mini (5th generation)"
        case iPad_Air_3rd_Gen = "iPad Air (3rd generation)"
        case appleTV = "Apple TV"
        case appleTV_4K = "Apple TV 4K"
        case appleTV_4K_1080p = "Apple TV 4K (at 1080p)"
        case apple_watch_series_2_38mm = "Apple Watch Series 2 - 38mm"
        case apple_watch_series_2_42mm = "Apple Watch Series 2 - 42mm"
        case apple_watch_series_3_38mm = "Apple Watch Series 3 - 38mm"
        case apple_watch_series_3_42mm = "Apple Watch Series 3 - 42mm"
        case apple_watch_series_4_40mm = "Apple Watch Series 4 - 40mm"
        case apple_watch_series_4_44mm = "Apple Watch Series 4 - 44mm"
    }

    public init(with deviceName: Device) {
        self.init(rawValue: deviceName.rawValue)
    }
}

extension PreviewDataProvider {

    public static var data: [PreviewDataProvider] {
        return [
            PreviewDataProvider(with: .iPhone_X,
                                colorScheme: .dark,
                                locale: .init(identifier: "en"),
                                layoutDirection: .leftToRight),
            PreviewDataProvider(with: .iPhone_SE,
                                colorScheme: .light,
                                locale: .init(identifier: "ar"),
                                layoutDirection: .rightToLeft)
        ]
    }
}
