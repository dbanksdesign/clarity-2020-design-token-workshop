//
//  SpaceTokenView.swift
//  ClarityDesignTokensDemo
//
//  Created by Banks, Daniel on 8/23/20.
//  Copyright © 2020 Amazon. All rights reserved.
//

import Foundation
import SwiftUI

struct PaddingTokensView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text(String(format: "Small %.0f", Tokens.sizePaddingSmall)).padding(10)
                Rectangle().frame(height: Tokens.sizePaddingSmall)
                Text(String(format: "Medium %.0f", Tokens.sizePaddingMedium)).padding(10)
                Rectangle().frame(height: Tokens.sizePaddingMedium)
                Text(String(format: "Large %.0f", Tokens.sizePaddingLarge)).padding(10)
                Rectangle().frame(height: Tokens.sizePaddingLarge)
                Text(String(format: "XL %.0f", Tokens.sizePaddingXl)).padding(10)
                Rectangle().frame(height: Tokens.sizePaddingXl)
                Text(String(format: "XXL %.0f", Tokens.sizePaddingXxl)).padding(10)
                Rectangle().frame(height: Tokens.sizePaddingXxl)
            }.padding(Tokens.sizePaddingMedium)
        }.navigationBarTitle("Paddings")
    }
}
