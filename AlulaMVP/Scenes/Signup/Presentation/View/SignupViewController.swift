//
//  SignupViewController.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 23/04/2024.
//

import UIKit

class SignupViewController <
    PresenterType: SignupViewPresenterProtocol
>: UIViewController, BaseViewControllerProtocol {
    
    var presenter: PresenterType?
    
    @IBOutlet weak var firstNameTextField: FloatingLabelTextField!
    @IBOutlet weak var lastNameTextField: FloatingLabelTextField!
    @IBOutlet weak var phoneNumberTextField: FloatingLabelTextField!
    @IBOutlet weak var emailTextField: FloatingLabelTextField!
    @IBOutlet weak var passwordTextField: FloatingLabelTextField!
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    @IBAction func didPressSignupButton(_ sender: UIButton) {
        presenter?.signupPressed()
    }
    
    @IBAction func didPressAlreadyMemberButton(_ sender: UIButton) {
        presenter?.alreadyMemberPressed()
    }
    
}

