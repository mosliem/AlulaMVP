//
//  TokenAdapter.swift
//  AlulaMVP
//
//  Created by mohamed sliem on 24/04/2024.
//

import Foundation

protocol TokenAdapterProtocol {
    func adapt(token: TokenDto) -> Token
}

class TokenAdapter: TokenAdapterProtocol {
    func adapt(token: TokenDto) -> Token {
        return Token(
            accessToken: token.accessToken ?? "",
            refreshToken: token.refreshToken ?? ""
        )
    }
}
