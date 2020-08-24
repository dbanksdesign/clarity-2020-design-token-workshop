//
//  ClarityBadge.swift
//  ClarityDesignTokensDemo
//
//  Created by Banks, Daniel on 8/24/20.
//  Copyright © 2020 Amazon. All rights reserved.
//

import SwiftUI

struct ClarityBadge: View {
    
    enum BadgeType {
        case
        danger,
        warning,
        none
        
        func getValue() -> Color {
            switch self {
            case .danger:
                return Color.red
            case .warning:
                return Color.orange
            case .none:
                return Color.blue
            }
        }
    }
    
    var text: String = ""
    var color: Color?
    var type: BadgeType = .none
    
    public var body: some View {
        HStack {
            Text(text)
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .background(color ?? type.getValue())
        .cornerRadius(20)
    }
}

struct ClarityBadge_Previews: PreviewProvider {
    static var previews: some View {
        HStack(spacing: 10) {
            ClarityBadge(text: "hello", type: .warning)
            ClarityBadge(text: "hello", type: .danger)
            ClarityBadge(text: "default")
            ClarityBadge(text: "custom", color: Color.green)
        }
    }
}
