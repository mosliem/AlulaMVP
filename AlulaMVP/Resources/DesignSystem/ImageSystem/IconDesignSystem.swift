//
//  IconDesignSystem.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 22/04/2024.
//
import UIKit

enum IconDesignSystem {
    case nameIcon
    case emailIcon
    case passwordIcon
}

extension IconDesignSystem {
    var iconImage: UIImage {
        switch self {
        case .nameIcon:
            return UIImage(resource: .personIcon)
        case .emailIcon:
            return UIImage(resource: .emailIcon)
        case .passwordIcon:
            return UIImage(resource: .eyeIcon)
        }
    }
}
