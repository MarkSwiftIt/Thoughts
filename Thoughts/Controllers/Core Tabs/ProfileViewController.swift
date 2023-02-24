//
//  ProfileViewController.swift
//  Thoughts
//
//  Created by Mark Goncharov on 20.02.2023.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign Out",
                                                  style: .done,
                                                  target: self,
                                                  action: #selector(didTapSignOut))
    }
    
    @objc private func didTapSignOut() {
        let sheet = UIAlertController(title: "Sign Out", message: "Are you sure you'd like to sign out?", preferredStyle: .actionSheet)
        sheet.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        sheet.addAction(UIAlertAction(title: "Sign Out", style: .destructive, handler: { _ in
            AuthManager.shared.signOut { [weak self] success in
                if success {
                    DispatchQueue.main.async {
                        UserDefaults.standard.set(nil, forKey: "email")
                        UserDefaults.standard.set(nil, forKey: "name")
                        
                        let signVC = SignInViewController()
                        signVC.navigationItem.largeTitleDisplayMode = .always
                        
                        let navc = UINavigationController(rootViewController: signVC)
                        navc.navigationBar.prefersLargeTitles = true
                        navc.modalPresentationStyle = .fullScreen
                        self?.present(navc, animated: true)
                    }
                }
            }
        }))
        present(sheet, animated: true)
    }
}
