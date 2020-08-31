//
//  FontSizeTokensView.swift
//  ClarityDesignTokensDemo
//
//  Created by Banks, Daniel on 8/24/20.
//  Copyright © 2020 Amazon. All rights reserved.
//

import SwiftUI
import ClarityDesignTokens

struct FontSizeTokensView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: ClarityDesignTokens.sizePaddingMedium) {
                Text(String(format: "Small %.0f", ClarityDesignTokens.sizeFontSmall))
                    .padding(ClarityDesignTokens.sizePaddingMedium)
                    .font(.system(size: ClarityDesignTokens.sizeFontSmall))
                
                Text(String(format: "Medium %.0f", ClarityDesignTokens.sizeFontMedium))
                    .padding(ClarityDesignTokens.sizePaddingMedium)
                    .font(.system(size: ClarityDesignTokens.sizeFontMedium))
                
                Text(String(format: "Large %.0f", ClarityDesignTokens.sizeFontLarge))
                    .padding(ClarityDesignTokens.sizePaddingMedium)
                    .font(.system(size: ClarityDesignTokens.sizeFontLarge))
                
                Text(String(format: "xl %.0f", ClarityDesignTokens.sizeFontXl))
                    .padding(ClarityDesignTokens.sizePaddingMedium)
                    .font(.system(size: ClarityDesignTokens.sizeFontXl))
                
                Text(String(format: "xxl %.0f", ClarityDesignTokens.sizeFontXxl))
                    .padding(ClarityDesignTokens.sizePaddingMedium)
                    .font(.system(size: ClarityDesignTokens.sizeFontXxl))
                
            }.padding(ClarityDesignTokens.sizePaddingMedium)
        }.navigationBarTitle("Font sizes")
    }
}

struct FontSizeTokensView_Previews: PreviewProvider {
    static var previews: some View {
        FontSizeTokensView()
    }
}
