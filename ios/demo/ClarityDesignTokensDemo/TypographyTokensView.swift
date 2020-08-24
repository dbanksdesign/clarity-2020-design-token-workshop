//
//  TypographyTokensView.swift
//  ClarityDesignTokensDemo
//
//  Created by Banks, Daniel on 8/24/20.
//  Copyright © 2020 Amazon. All rights reserved.
//

import SwiftUI

struct TypographyTokensView: View {

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("h1")
                    .clarityTypography(.h1)

                Text("h2")
                    .clarityTypography(.h2)

                Text("h3")
                    .clarityTypography(.h3)

                Text("h4")
                    .clarityTypography(.h4)

                Text("h5")
                    .clarityTypography(.h5)

                Text("h6")
                    .clarityTypography(.h6)

                Text("s1")
                    .clarityTypography(.s1)

                Text("s2")
                    .clarityTypography(.s2)

                Text("p1")
                    .clarityTypography(.p1)

                Text("p2")
                    .clarityTypography(.p2)
            }.padding(medium)
        }.navigationBarTitle("Typography tokens")
    }
}


struct TypographyTokensView_Previews: PreviewProvider {
    static var previews: some View {
        TypographyTokensView()
    }
}
