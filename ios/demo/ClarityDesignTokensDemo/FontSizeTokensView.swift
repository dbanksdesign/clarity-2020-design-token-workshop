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
                    .padding(10)
                    .font(.system(size: ClarityDesignTokens.sizeFontSmall))
                
                Text(String(format: "Medium %.0f", ClarityDesignTokens.sizeFontMedium))
                    .padding(10)
                    .font(.system(size: ClarityDesignTokens.sizeFontMedium))
                
                Text(String(format: "Large %.0f", ClarityDesignTokens.sizeFontLarge))
                    .padding(10)
                    .font(.system(size: ClarityDesignTokens.sizeFontLarge))
                
                Text(String(format: "xl %.0f", ClarityDesignTokens.sizeFontXl))
                    .padding(10)
                    .font(.system(size: ClarityDesignTokens.sizeFontXl))
                
            }.padding(ClarityDesignTokens.sizePaddingMedium)
        }.navigationBarTitle("Font size tokens")
    }
}

struct FontSizeTokensView_Previews: PreviewProvider {
    static var previews: some View {
        FontSizeTokensView()
    }
}
