//
//  HomeViewModel.swift
//  LoginMVVM
//
//  Created by Clark Davis Monforte on 11/6/24.
//

import Foundation

final class HomeViewModel {
    
    var welcomeMessage: ObservableObject<String?> = ObservableObject(nil)
    
    func getLoggedInUser() {
        let user = NetworkService.shared.getLoggedInUser()
        self.welcomeMessage.value = "Welcome, \(user.name)"
    }
}
