//
//  HomeView.swift
//  ClarityDesignTokensDemo
//
//  Created by Banks, Daniel on 8/24/20.
//  Copyright © 2020 Amazon. All rights reserved.
//

import Foundation
import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Clarity Design Tokens Demo!")
                .clarityTypography(.h1)
            ClarityButton(text: "Fill", style: .fill, action: { print("click") })
            ClarityBadge(text: "test")
        }.padding(20)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
