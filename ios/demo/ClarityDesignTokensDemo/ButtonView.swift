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
            Button(action: {
                print("hello world")
            }) {
                Text("Help")
                    .background(Color.blue)
            }
        }.navigationBarTitle("Buttons")
    }
}
