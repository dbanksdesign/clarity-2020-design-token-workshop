//
//  ClarityTypography.swift
//  ClarityDesignTokensDemo
//
//  Created by Banks, Daniel on 8/24/20.
//  Copyright © 2020 Amazon. All rights reserved.
//

import SwiftUI

public struct ClarityTypography: ViewModifier {
    
    enum Style {
        
        /// Titles
        case h1, h2, h3, h4, h5, h6
        
        /// Subtitles
        case s1, s2
        
        /// Paragraphs
        case p1, p2
        
        /// Captions
        case c1, c2
    }
    
    var style: Style
    
    public func body(content: Content) -> some View {
        switch style {
        case .h1: return content
            .font(.system(size: 36, weight: .bold))
        case .h2: return content
            .font(.system(size: 32, weight: .bold))
        case .h3: return content
            .font(.system(size: 30, weight: .bold))
        case .h4: return content
            .font(.system(size: 26, weight: .bold))
        case .h5: return content
            .font(.system(size: 22, weight: .bold))
        case .h6: return content
            .font(.system(size: 18, weight: .bold))
            
        case .s1: return content
            .font(.system(size: 15, weight: .semibold))
        case .s2: return content
            .font(.system(size: 13, weight: .semibold))
            
        case .p1: return content
            .font(.system(size: 15, weight: .regular))
        case .p2: return content
            .font(.system(size: 13, weight: .regular))
            
        case .c1: return content
            .font(.system(size: 12, weight: .regular))
        case .c2: return content
            .font(.system(size: 12, weight: .bold))
        }
    }
}

extension View {
    func clarityTypography(_ style: ClarityTypography.Style) -> some View {
        self
            .modifier(ClarityTypography(style: style))
    }
    
    func clarityTypography(_ style: ClarityTypography.Style, color: Color) -> some View {
        self
            .modifier(ClarityTypography(style: style))
            .foregroundColor(color)
    }
}


struct Typography_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 10) {
            Group {
                Text("Typography h1").clarityTypography(.h1, color: Color.black)
                Text("Typography h1").clarityTypography(.h1, color: Color.green)
                Text("Typography h1").clarityTypography(.h1, color: Color.red)
            
                Text("Typography h1").clarityTypography(.h1)
                Text("Typography h2").clarityTypography(.h2)
                Text("Typography h3").clarityTypography(.h3)
                Text("Typography h4").clarityTypography(.h4)
                Text("Typography h5").clarityTypography(.h5)
                Text("Typography h6").clarityTypography(.h6)
            }
            Group {
                Text("Typography s1").clarityTypography(.s1)
                Text("Typography s2").clarityTypography(.s2)
                
                Text("Typography p1").clarityTypography(.p1)
                Text("Typography p2").clarityTypography(.p2)
                
                Text("Typography c1").clarityTypography(.c1)
                Text("Typography c2").clarityTypography(.c2)
            }
        }
    }
}

