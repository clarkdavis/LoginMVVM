//
//  NetworkService.swift
//  LoginMVVM
//
//  Created by Clark Davis Monforte on 11/5/24.
//

import Foundation

final class NetworkService {
    static let shared = NetworkService()
    
    private var user: User?
    
    private init() { }
    
    func login(email: String, password: String, completion: @escaping(Bool) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            if email == "cdmonforte@gmail.com" && password == "password" {
                self.user = User(name: "Clarke Davis", email: "cdmonforte@gmail.com")
                completion(true)
            } else {
                self.user = nil
                completion(false)
            }
        }
    }
    
    func getLoggedInUser() -> User {
        return user!
    }
}
