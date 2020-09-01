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
                return Color(Tokens.componentBadgeDangerBackgroundColor)
            case .warning:
                return Color(Tokens.componentBadgeWarningBackgroundColor)
            case .success:
                return Color(Tokens.componentBadgeSuccessBackgroundColor)
            case .none:
                return Color(Tokens.componentBadgeBackgroundColor)
            }
        }
        
        func getTextColor() -> Color {
            switch self {
            case .danger:
                return Color(Tokens.componentBadgeDangerColor)
            case .warning:
                return Color(Tokens.componentBadgeWarningColor)
            case .success:
                return Color(Tokens.componentBadgeSuccessColor)
            case .none:
                return Color(Tokens.componentBadgeColor)
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
        .cornerRadius(Tokens.componentBadgeBorderRadius)
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
