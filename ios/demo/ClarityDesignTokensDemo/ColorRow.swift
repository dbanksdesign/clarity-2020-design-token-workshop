//
//  ColorRow.swift
//  ClarityDesignTokensExample
//
//  Created by Banks, Daniel on 8/21/20.
//  Copyright © 2020 Amazon. All rights reserved.
//

import Foundation
import SwiftUI

extension UIColor {
    var coreImageColor: CIColor {
        return CIColor(color: self)
    }
    var components: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
        let coreImageColor = self.coreImageColor
        return (coreImageColor.red, coreImageColor.green, coreImageColor.blue, coreImageColor.alpha)
    }
    
    var toHex: String? {
        return toHex()
    }

    // MARK: - From UIColor to String

    func toHex(alpha: Bool = false) -> String? {
        guard let components = cgColor.components, components.count >= 3 else {
            return nil
        }

        let r = Float(components[0])
        let g = Float(components[1])
        let b = Float(components[2])
        var a = Float(1.0)

        if components.count >= 4 {
            a = Float(components[3])
        }

        if alpha {
            return String(format: "#%02lX%02lX%02lX%02lX", lroundf(r * 255), lroundf(g * 255), lroundf(b * 255), lroundf(a * 255))
        } else {
            return String(format: "#%02lX%02lX%02lX", lroundf(r * 255), lroundf(g * 255), lroundf(b * 255))
        }
    }
}

func getHex(color: UIColor) -> String {
    let components = color.components
    
    return String(format: "R: %.3f, G: %.3f, B: %.3f", components.red, components.blue, components.green)
}

struct ColorRow: View {
    var color: UIColor
    var label: String
    
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color(color))
                    .frame(width: 50, height: 50)
            }
            VStack(alignment: .leading) {
                Text(label)
                Text(color.toHex ?? "foo")
            }.padding(10)
            Spacer()
        }
    }
}

struct ColorRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ColorRow(color: UIColor.systemBlue, label: "foo")
                .previewLayout(.fixed(width: 400, height:70))
        }
    }
}
