//
//  SignupRepoData.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 23/04/2024.
//

import Foundation
import Utilits

//combining endpoint and body in one model used by remote repo
struct SignupRepositoryData {
    var endpoint: Requsetable
    var signupBody: [String: String]
}
