//
//  colorExt.swift
//  choice
//
//  Created by 潘英剑 on 6/18/20.
//  Copyright © 2020 潘英剑. All rights reserved.
//

import SwiftUI

extension UIColor {
    static let mint = UIColor(red: 0.623, green: 1, blue: 0.885, alpha: 1)
}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func randomColor() -> UIColor {
        return UIColor(
           red:   .random(),
           green: .random(),
           blue:  .random(),
           alpha: 1.0
        )
    }
}


extension Color {
    static func randomColor() -> Color {
        return Color(
           red:   .random(in: 0...1),
           green: .random(in: 0...1),
           blue:  .random(in: 0...1)
        )
    }
}

//extension Color {
//    static var random: Color {
//        return Color(red: .random(in: 0...1),
//                     green: .random(in: 0...1),
//                     blue: .random(in: 0...1))
//    }
//}


extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

