//
//  SpaceTokenView.swift
//  ClarityDesignTokensDemo
//
//  Created by Banks, Daniel on 8/23/20.
//  Copyright © 2020 Amazon. All rights reserved.
//

import Foundation
import SwiftUI
import ClarityDesignTokens

struct PaddingTokensView: View {
    var paddingColor = Color(ClarityDesignTokens.colorBrandPrimary)
    var body: some View {
        ScrollView {
            VStack(spacing: ClarityDesignTokens.sizePaddingMedium) {
                Text(String(format: "Small %.0f", ClarityDesignTokens.sizePaddingSmall)).padding(10)
                Rectangle()
                    .fill(paddingColor)
                    .frame(height: ClarityDesignTokens.sizePaddingSmall)
                
                Text(String(format: "Medium %.0f", ClarityDesignTokens.sizePaddingMedium)).padding(10)
                Rectangle()
                    .fill(paddingColor)
                    .frame(height: ClarityDesignTokens.sizePaddingMedium)
                
                Text(String(format: "Large %.0f", ClarityDesignTokens.sizePaddingLarge)).padding(10)
                Rectangle()
                    .fill(paddingColor)
                    .frame(height: ClarityDesignTokens.sizePaddingLarge)
                
                Text(String(format: "XL %.0f", ClarityDesignTokens.sizePaddingXl)).padding(10)
                Rectangle()
                    .fill(paddingColor)
                    .frame(height: ClarityDesignTokens.sizePaddingXl)
                
                Text(String(format: "XXL %.0f", ClarityDesignTokens.sizePaddingXxl)).padding(10)
                Rectangle()
                    .fill(paddingColor)
                    .frame(height: ClarityDesignTokens.sizePaddingXxl)
            }.padding(ClarityDesignTokens.sizePaddingMedium)
        }.navigationBarTitle("Paddings")
    }
}
