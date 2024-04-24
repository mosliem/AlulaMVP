//
//  HomeViewController.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 24/04/2024.
//

import UIKit

class HomeViewController<PresenterType: HomePresenterProtocol>: UIViewController, HomeViewProtocol {
    var presenter: PresenterType?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
