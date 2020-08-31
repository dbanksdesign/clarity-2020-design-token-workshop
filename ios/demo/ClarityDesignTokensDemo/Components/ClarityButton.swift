//
//  ClarityButton.swift
//  ClarityDesignTokensDemo
//
//  Created by Banks, Daniel on 8/24/20.
//  Copyright © 2020 Amazon. All rights reserved.
//
// Borrowed from https://gitlab.com/fabio.staiano/bricksui

import SwiftUI

// MARK: - Custom Button Styles

struct ClarityButtonStyle: ButtonStyle {
    var color: Color
    var style: ClarityButton.Style
    
    func makeBody(configuration: ButtonStyle.Configuration) -> some View {
        switch style {
        case .fill: return AnyView(FillButton(color: color, configuration: configuration))
        case .outline: return AnyView(OutlineButton(color: color, configuration: configuration))
        case .ghost: return AnyView(GhostButton(color: color, configuration: configuration))
        case .primary: return AnyView(PrimaryButton(configuration: configuration))
        }
    }
    
    struct PrimaryButton: View {
        let configuration: ButtonStyle.Configuration
        @Environment(\.isEnabled) private var isEnabled: Bool
        var body: some View {
            configuration.label
                .foregroundColor(Tokens.componentButtonPrimaryColor)
                .padding()
                .frame(minHeight: 56)
                .background(Tokens.componentButtonPrimaryBackgroundColor)
                .cornerRadius(4)
                .opacity(configuration.isPressed ? 0.7 : 1)
        }
    }
    
    struct FillButton: View {
        var color: Color
        let configuration: ButtonStyle.Configuration
        @Environment(\.isEnabled) private var isEnabled: Bool
        var body: some View {
            configuration.label
                .foregroundColor(isEnabled ? .white : .black)
                .padding()
                .frame(minHeight: 56)
                .background(isEnabled ? color : Color.white.opacity(0.2))
                .cornerRadius(4)
                .opacity(configuration.isPressed ? 0.7 : 1)
        }
    }
    
    struct OutlineButton: View {
        var color: Color
        let configuration: ButtonStyle.Configuration
        @Environment(\.isEnabled) private var isEnabled: Bool
        var body: some View {
            configuration.label
//                .brTypo(.s1)
                .foregroundColor(Tokens.componentButtonColor)
                .padding()
                .frame(minHeight: 56)
                .background(Color.white.opacity(0.15))
                .cornerRadius(4)
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Tokens.componentButtonBorderColor, lineWidth: Tokens.componentButtonBorderWidth)
                )
                .opacity(configuration.isPressed ? 0.7 : 1)
        }
    }
    
    struct GhostButton: View {
        var color: Color
        let configuration: ButtonStyle.Configuration
        @Environment(\.isEnabled) private var isEnabled: Bool
        var body: some View {
            configuration.label
//                .brTypo(.s1)
                .foregroundColor(isEnabled ? color : .black)
                .padding()
                .frame(minHeight: 56)
                .background(Color.white)
                .cornerRadius(4)
                .opacity(configuration.isPressed ? 0.7 : 1)
        }
    }
}

// MARK: - Usage

extension Button {
    /// Changes the appearance of the button
    func style(_ style: ClarityButton.Style, color: Color) -> some View {
        self.buttonStyle(ClarityButtonStyle(color: color, style: style))
    }
}

struct ClarityButton: View {
    
    enum Style {
        case fill, outline, ghost, primary
    }
    
    var text: String?
    var image: Image?
    var style: Style = .fill
    var color: Color = .blue
    var action: () -> Void
    var textAndImage: Bool { text != nil && image != nil }
    
    var body: some View {
        Button(action: action, label: {
            HStack() {
                Spacer()
                HStack(spacing: textAndImage ? 12 : 0) {
                    Text(text ?? "")
                    image
                }
                Spacer()
            }
        }).style(style, color: color)
    }
}


// MARK: - Preview

public struct Input_Previews: PreviewProvider {
    static let cloudImg = Image(systemName: "cloud.sun")
    
    public static var previews: some View {
        VStack(spacing: 40) {
            
            HStack(spacing: 5) {
                ClarityButton(text: "Fill", style: .fill, action: { print("click") })
                ClarityButton(text: "Outline", style: .outline, action: { print("click") })
                ClarityButton(text: "Ghost", style: .ghost, action: { print("click") })
            }
            
            HStack(spacing: 5) {
                ClarityButton(text: "Danger", color: Color.red, action: { print("click") })
                ClarityButton(text: "Warning", color: Color.orange, action: { print("click") })
                ClarityButton(text: "Success", color: Color.green, action: { print("click") })
            }
            
            HStack(spacing: 5) {
                ClarityButton(text: "Disabled", style: .fill, action: { print("click") })
                    .disabled(true)
                ClarityButton(text: "Disabled", style: .outline, action: { print("click") })
                    .disabled(true)
                ClarityButton(text: "Disabled", style: .ghost, action: { print("click") })
                    .disabled(true)
            }
            
            HStack(spacing: 5) {
                ClarityButton(text: "Text", image: cloudImg, action: { print("click") })
                ClarityButton(image: cloudImg, action: { print("click") })
            }
            
            Button(action: { print("click") }, label: { Text("Custom") })
                .style(.outline, color: Color.blue)
        }
    .padding(10)
    }
}
