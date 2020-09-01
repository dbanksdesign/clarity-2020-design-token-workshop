//
//  ColorTokenView.swift
//  ClarityDesignTokensDemo
//
//  Created by Banks, Daniel on 8/23/20.
//  Copyright © 2020 Amazon. All rights reserved.
//

import Foundation
import SwiftUI

struct ColorToken: Identifiable {
    var id = UUID()
    var name: String
    var value: UIColor
}


struct ColorTokensView: View {
    let borderColors = [
        ColorToken(name: "colorBorderPrimary", value: Tokens.colorBorderPrimary),
        ColorToken(name: "colorBorderSecondary", value: Tokens.colorBorderSecondary)
    ]
    
    var backgroundColors = [
        ColorToken(name: "colorBackgroundPrimary", value: Tokens.colorBackgroundPrimary),
        ColorToken(name: "colorBackgroundSecondary", value: Tokens.colorBackgroundSecondary),
        ColorToken(name: "colorBackgroundTertiary", value: Tokens.colorBackgroundTertiary),
        ColorToken(name: "colorBackgroundDanger", value: Tokens.colorBackgroundDanger),
        ColorToken(name: "colorBackgroundWarning", value: Tokens.colorBackgroundWarning),
        ColorToken(name: "colorBackgroundSuccess", value: Tokens.colorBackgroundSuccess),
    ]
    
    var fontColors = [
        ColorToken(name: "colorFontPrimary", value: Tokens.colorFontPrimary),
        ColorToken(name: "colorFontSecondary", value: Tokens.colorFontSecondary),
        ColorToken(name: "colorFontTertiary", value: Tokens.colorFontTertiary),
        ColorToken(name: "colorFontInteractive", value: Tokens.colorFontInteractive),
        ColorToken(name: "colorFontActive", value: Tokens.colorFontActive),
        ColorToken(name: "colorFontDisabled", value: Tokens.colorFontDisabled),
        ColorToken(name: "colorFontDanger", value: Tokens.colorFontDanger),
        ColorToken(name: "colorFontWarning", value: Tokens.colorFontWarning),
        ColorToken(name: "colorFontSuccess", value: Tokens.colorFontSuccess),
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
