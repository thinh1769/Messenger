//
//  ViewController.swift
//  Messenger
//
//  Created by Nguyen Thinh on 21/07/2022.
//

import UIKit

class ConversationsController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let isLoggedIn = UserDefaults.standard.bool(forKey: "loggedIn")
        
        if !isLoggedIn {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            
            //để nav bar hiển thị view full chứ ko phải là view dạng card có thể dismiss
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false)
        }
    }

}
