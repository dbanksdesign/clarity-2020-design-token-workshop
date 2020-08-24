//
//  ContentView.swift
//  ClarityDesignTokensDemo
//
//  Created by Banks, Daniel on 8/24/20.
//  Copyright © 2020 Amazon. All rights reserved.
//

import Foundation
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView().tabItem {
                Image(systemName: "hexagon")
                Text("Home")
            }
            ComponentsListView().tabItem {
                Image(systemName: "aspectratio")
                Text("Components")
            }
            TokensView().tabItem {
                Image(systemName: "slider.horizontal.3")
                Text("Tokens")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
