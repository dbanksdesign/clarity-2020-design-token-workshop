//
//  TokenView.swift
//  ClarityDesignTokensDemo
//
//  Created by Banks, Daniel on 8/23/20.
//  Copyright © 2020 Amazon. All rights reserved.
//

import Foundation
import SwiftUI

struct TokensView: View {
    var body: some View {
        NavigationView {
            List() {
                NavigationLink(destination: ColorTokensView()) {
                    Text("Colors")
                }
                NavigationLink(destination: PaddingTokensView()) {
                    Text("Paddings")
                }
                NavigationLink(destination: FontSizeTokensView()) {
                    Text("Font Sizes")
                }
            }.navigationBarTitle("Tokens")
        }
    }
}
