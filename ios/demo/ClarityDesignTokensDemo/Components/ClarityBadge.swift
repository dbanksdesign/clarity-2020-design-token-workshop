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
        success,
        none
        
        func getBackgroundColor() -> Color {
            switch self {
            case .danger:
                return Tokens.componentBadgeBackgroundColor
            case .warning:
                return Tokens.componentBadgeBackgroundColor
            case .success:
                return Tokens.componentBadgeBackgroundColor
            case .none:
                return Tokens.componentBadgeBackgroundColor
            }
        }
        
        func getTextColor() -> Color {
            switch self {
            case .danger:
                return Tokens.componentBadgeColor
            case .warning:
                return Tokens.componentBadgeColor
            case .success:
                return Tokens.componentBadgeColor
            case .none:
                return Tokens.componentBadgeColor
            }
        }
    }
    
    var text: String = ""
    var color: Color?
    var type: BadgeType = .none
    
    public var body: some View {
        HStack {
            Text(text).foregroundColor(type.getTextColor())
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .background(color ?? type.getBackgroundColor())
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
