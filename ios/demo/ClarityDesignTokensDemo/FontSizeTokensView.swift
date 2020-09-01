//
//  FontSizeTokensView.swift
//  ClarityDesignTokensDemo
//
//  Created by Banks, Daniel on 8/24/20.
//  Copyright © 2020 Amazon. All rights reserved.
//

import SwiftUI

struct FontSizeTokensView: View {
    var small = CGFloat(12)
    var medium = CGFloat(18)
    var large = CGFloat(24)
    var xl = CGFloat(36)
    var xxl = CGFloat(52)
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text(String(format: "Small %.0f", small))
                    .padding(10)
                    .font(.system(size: small))
                
                Text(String(format: "Medium %.0f", medium))
                    .padding(10)
                    .font(.system(size: medium))
                
                Text(String(format: "Large %.0f", large))
                    .padding(10)
                    .font(.system(size: large))
                
                Text(String(format: "xl %.0f", xl))
                    .padding(10)
                    .font(.system(size: xl))
                
                Text(String(format: "xxl %.0f", xxl))
                    .padding(10)
                    .font(.system(size: xxl))
            }.padding(medium)
        }.navigationBarTitle("Font Sizes")
    }
}

struct FontSizeTokensView_Previews: PreviewProvider {
    static var previews: some View {
        FontSizeTokensView()
    }
}
