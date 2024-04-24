//
//  LoginViewController.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 24/04/2024.
//

import UIKit

class LoginViewController <PresenterType: LoginViewPresenterProtocol>: UIViewController, LoginView {
    var presenter: PresenterType?
    
    @IBOutlet weak var emailTextField: FloatingLabelTextField!
    @IBOutlet weak var passwordTextField: FloatingLabelTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didPressLogin(_ sender: UIButton) {
        presenter?.loginPressed()
    }
    
    @IBAction func didPressNewUser(_ sender: UIButton) {
        presenter?.newUserPressed()
    }
    
}
