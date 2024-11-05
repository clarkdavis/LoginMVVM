//
//  HomeController.swift
//  LoginMVVM
//
//  Created by Clark Davis Monforte on 11/5/24.
//

import UIKit

class HomeController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    private let viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setBinders()
        viewModel.getLoggedInUser()
    }
    
    private func setBinders() {
        viewModel.welcomeMessage.bind { [weak self] welcomeMessage in
            self?.welcomeLabel.text = welcomeMessage
        }
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
