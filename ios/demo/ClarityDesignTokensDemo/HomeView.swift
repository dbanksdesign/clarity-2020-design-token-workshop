//
//  HomeView.swift
//  ClarityDesignTokensDemo
//
//  Created by Banks, Daniel on 8/24/20.
//  Copyright © 2020 Amazon. All rights reserved.
//

import Foundation
import SwiftUI
import ClarityDesignTokens

struct HomeView: View {
    var body: some View {
        VStack(spacing: ClarityDesignTokens.sizePaddingXl) {
            Text("Clarity Design Tokens Demo!")
                .clarityTypography(.h1)
            Image("logo", bundle: Bundle(identifier: "org.cocoapods.ClarityDesignTokens"))
        }.padding(ClarityDesignTokens.sizePaddingMedium)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
