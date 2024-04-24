//
//  FloatingLabelTextField.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 22/04/2024.
//

import UIKit
import Utilits

class FloatingLabelTextField: UIView {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        fromNib()
        customPadding()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fromNib()
        customPadding()
    }
}

extension FloatingLabelTextField {
    
    func setupFloatingTextField(
        floatingTextFieldModel: FloatingTextFieldModel
    ) {
        if let icon = floatingTextFieldModel.icon {
            self.iconImageView.image = icon
        }
        self.textField.placeholder = floatingTextFieldModel.placeholder

        self.titleLabel.text = floatingTextFieldModel.title
    }
}

extension FloatingLabelTextField {
    private func customPadding() {
        self.textField.addPadding(side: .left, 12)
        self.textField.addPadding(side: .right, 30)
    }
}
