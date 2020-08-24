//
//  ColorTokenView.swift
//  ClarityDesignTokensDemo
//
//  Created by Banks, Daniel on 8/23/20.
//  Copyright © 2020 Amazon. All rights reserved.
//

import Foundation
import SwiftUI


struct ColorTokensView: View {
    var borderColors = [
        UIColor.systemTeal,
        UIColor.systemRed,
        UIColor.systemBlue
    ]
    
    
    var body: some View {
        List() {
            Section(header: Text("Background")) {
                ForEach(borderColors, id: \.self) {
                    ColorRow(color: $0, label: "name")
                }
            }
            Section(header: Text("Font")) {
                ForEach(borderColors, id: \.self) {
                    ColorRow(color: $0, label: "name")
                }
            }
            Section(header: Text("Border")) {
                ForEach(borderColors, id: \.self) {
                    ColorRow(color: $0, label: "foo")
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
