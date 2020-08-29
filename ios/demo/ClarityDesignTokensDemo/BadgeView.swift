//
//  BadgeView.swift
//  ClarityDesignTokensDemo
//
//  Created by Banks, Daniel on 8/28/20.
//  Copyright © 2020 Amazon. All rights reserved.
//

import SwiftUI

struct BadgeView: View {
    var body: some View {
        VStack(spacing: 20) {
            ClarityBadge(text: "Warning", type: .warning)
            ClarityBadge(text: "Danger", type: .danger)
            ClarityBadge(text: "Default")
            ClarityBadge(text: "Custom", color: Color.green)
        }.navigationBarTitle("Badges")
    }
}

struct BadgeView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeView()
    }
}
