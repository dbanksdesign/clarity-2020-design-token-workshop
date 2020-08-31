//
//  ColorTokenView.swift
//  ClarityDesignTokensDemo
//
//  Created by Banks, Daniel on 8/23/20.
//  Copyright © 2020 Amazon. All rights reserved.
//

import Foundation
import SwiftUI
import ClarityDesignTokens

struct ColorToken: Identifiable {
    var id = UUID()
    var name: String
    var value: UIColor
}

struct ColorTokensView: View {
    let borderColors = [
        ColorToken(name: "colorBorderPrimary", value: ClarityDesignTokens.colorBorderPrimary),
        ColorToken(name: "colorBorderSecondary", value: ClarityDesignTokens.colorBorderSecondary)
    ]
    
    var backgroundColors = [
        ColorToken(name: "colorBackgroundPrimary", value: ClarityDesignTokens.colorBackgroundPrimary),
        ColorToken(name: "colorBackgroundSecondary", value: ClarityDesignTokens.colorBackgroundSecondary),
        ColorToken(name: "colorBackgroundTertiary", value: ClarityDesignTokens.colorBackgroundTertiary),
        ColorToken(name: "colorBackgroundDanger", value: ClarityDesignTokens.colorBackgroundDanger),
        ColorToken(name: "colorBackgroundWarning", value: ClarityDesignTokens.colorBackgroundWarning),
        ColorToken(name: "colorBackgroundSuccess", value: ClarityDesignTokens.colorBackgroundSuccess),
    ]
    
    var fontColors = [
        ColorToken(name: "colorFontPrimary", value: ClarityDesignTokens.colorFontPrimary),
        ColorToken(name: "colorFontSecondary", value: ClarityDesignTokens.colorFontSecondary),
        ColorToken(name: "colorFontTertiary", value: ClarityDesignTokens.colorFontTertiary),
        ColorToken(name: "colorFontInteractive", value: ClarityDesignTokens.colorFontInteractive),
        ColorToken(name: "colorFontInteractiveActive", value: ClarityDesignTokens.colorFontActive),
        ColorToken(name: "colorFontInteractiveDisabled", value: ClarityDesignTokens.colorFontDisabled),
        ColorToken(name: "colorFontDanger", value: ClarityDesignTokens.colorFontDanger),
        ColorToken(name: "colorFontWarning", value: ClarityDesignTokens.colorFontWarning),
        ColorToken(name: "colorFontSuccess", value: ClarityDesignTokens.colorFontSuccess),
    ]
    
    
    var body: some View {
        List() {
            Section(header: Text("Background")) {
                ForEach(backgroundColors) { color in
                    ColorRow(color: color.value, label: color.name)
                }
            }
            Section(header: Text("Font")) {
                ForEach(fontColors) { color in
                    ColorRow(color: color.value, label: color.name)
                }
            }
            Section(header: Text("Border")) {
                ForEach(borderColors) { color in
                    ColorRow(color: color.value, label: color.name)
                }
            }

        }.navigationBarTitle("Color tokens")
    }
}

struct ColorTokensView_Previews: PreviewProvider {
    static var previews: some View {
        ColorTokensView()
    }
}
