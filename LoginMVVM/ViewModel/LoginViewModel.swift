//
//  LoginViewModel.swift
//  LoginMVVM
//
//  Created by Clark Davis Monforte on 11/6/24.
//

final class LoginViewModel {
    
    var error: ObservableObject<String?> = ObservableObject(nil)
    
    func login(email: String, password: String) {
        NetworkService.shared.login(email: email, password: password) { [weak self] success in
            self?.error.value = success ? nil : "Invalid credentials"
        }
    }
}
