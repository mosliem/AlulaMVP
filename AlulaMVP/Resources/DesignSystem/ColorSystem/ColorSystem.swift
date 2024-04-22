//
//  ColorSystem.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 22/04/2024.
//

import UIKit

enum ColorSystem: String {
    case primary
    case secondary
}

extension UIColor {
    static func appColor(_ name: ColorSystem) -> UIColor? {
           return UIColor(named: name.rawValue)
      }
}
