//
//  ViewController.swift
//  LoginMVVM
//
//  Created by Clark Davis Monforte on 11/5/24.
//

import UIKit

class LoginController: UIViewController {
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setBinders()
    }
    
    @IBAction func loginBtnClicked(_ sender: Any) {
        guard let email = emailTF.text, let password = passwordTF.text else { return }
        viewModel.login(email: email, password: password)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    private func setBinders() {
        viewModel.error.bind { [weak self] error in
            if let error = error {
                print(error)
            } else {
                self?.gotoHome()
            }
        }
    }
    
    private func gotoHome() {
        let controller = storyboard?.instantiateViewController(identifier: "HomeController") as! HomeController
        present(controller, animated: true)
    }
}

