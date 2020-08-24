//
//  SpaceTokenView.swift
//  ClarityDesignTokensDemo
//
//  Created by Banks, Daniel on 8/23/20.
//  Copyright © 2020 Amazon. All rights reserved.
//

import Foundation
import SwiftUI

struct SpaceTokensView: View {
    var small = CGFloat(12)
    var medium = CGFloat(18)
    var large = CGFloat(24)
    var xl = CGFloat(36)
    var xxl = CGFloat(52)
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text(String(format: "Small %.0f", small)).padding(10)
                Rectangle().frame(height: small)
                Text("Medium").padding(10)
                Rectangle().frame(height: medium)
                Text("Large").padding(10)
                Rectangle().frame(height: large)
                Text("XL").padding(10)
                Rectangle().frame(height: xl)
                Text("XXL").padding(10)
                Rectangle().frame(height: xxl)
            }.padding(medium)
        }.navigationBarTitle("Space tokens")
    }
}
