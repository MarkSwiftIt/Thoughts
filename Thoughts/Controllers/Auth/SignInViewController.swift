//
//  SignInViewController.swift
//  Thoughts
//
//  Created by Mark Goncharov on 20.02.2023.
//

import UIKit

class SignInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Sing In"
        view.backgroundColor = .systemBackground
        dispatch()
    }
    
    private func dispatch() {
        DispatchQueue.main.asyncAfter(deadline: .now()+3) {
            if !IAPManager.shared.isPremium() {
                let vc = PayWallViewController()
                let navVC = UINavigationController(rootViewController: vc)
                self.present(navVC, animated: true)
            }
        }
    }

}
