//
//  ClarityBadge.swift
//  ClarityDesignTokensDemo
//
//  Created by Banks, Daniel on 8/24/20.
//  Copyright © 2020 Amazon. All rights reserved.
//

import SwiftUI
import ClarityDesignTokens

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
                return Color(BadgeTokens.dangerBackgroundColor)
            case .warning:
                return Color(BadgeTokens.warningBackgroundColor)
            case .success:
                return Color(BadgeTokens.successBackgroundColor)
            case .none:
                return Color(BadgeTokens.backgroundColor)
            }
        }
        
        func getTextColor() -> Color {
            switch self {
            case .danger:
                return Color(BadgeTokens.dangerColor)
            case .warning:
                return Color(BadgeTokens.warningColor)
            case .success:
                return Color(BadgeTokens.successColor)
            case .none:
                return Color(BadgeTokens.color)
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
