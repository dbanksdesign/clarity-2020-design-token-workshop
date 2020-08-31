//
//  ButtonView.swift
//  ClarityDesignTokensDemo
//
//  Created by Banks, Daniel on 8/23/20.
//  Copyright © 2020 Amazon. All rights reserved.
//

import Foundation
import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack(spacing: 20) {
            ClarityButton(text: "Fill", style: .primary, action: { print("click") })
            ClarityButton(text: "Outline", style: .outline, action: { print("click") })
        }.padding(20)
            .navigationBarTitle("Buttons")
    }
}
