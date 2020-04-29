//
//  ContentView.swift
//  PreviewDataProviderExample
//
//  Created by Ankush Bhatia on 30/04/20.
//  Copyright © 2020 Ankush Bhatia. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("Hello, World!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {

    static let previewData = [
        PreviewDataProvider(device: .iPhone_X,
                            colorScheme: .light,
                            locale: .current,
                            layoutDirection: .leftToRight),
        PreviewDataProvider(device: .iPhone_SE,
                            colorScheme: .dark,
                            locale: .current,
                            layoutDirection: .rightToLeft)
    ]

    static var previews: some View {
        ForEach(previewData, id: \.id) { data  in
            ContentView()
                .colorScheme(data.colorScheme)
                .previewDevice(PreviewDevice(with: data.device))
                .environment(\.locale, data.locale)
        }
    }
}
