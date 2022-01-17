//
//  WelcomeViewController.swift
//  DatingAppV2
//
//  Created by Edward Suwirya on 1/15/22.
//

import UIKit
import CreateAccountModuleLibrary
import LoginModuleLibrary

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var createAccountButton: UIButton!
    
    @IBOutlet weak var signInButton: UIButton!
    
    @IBOutlet weak var termCondtionLabel: UILabel!
    var memberId:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        createAccountButton.addTarget(self, action: #selector(didSignInSignUpButtonClick), for: .touchUpInside)
        signInButton.addTarget(self, action: #selector(didSignInSignUpButtonClick), for: .touchUpInside)
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(systemName: "arrow.left.circle")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(systemName: "arrow.left.circle")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        self.signInButton.setTitle(Constants.signInButtonTitle.localized,for: .normal)
        self.createAccountButton.setTitle(Constants.createAccountButtonTitle.localized, for: .normal)
        self.termCondtionLabel.text = Constants.tcLabelTitle.localized
    }
    
    
    @objc func didSignInSignUpButtonClick(_ sender: UIButton) {
        if self.memberId == nil{
            doShowSignUp()
        }else{
            doShowSignIn()
        }
    }
    func doShowSignUp(){
        guard let createAccountVc = AssemblerManager.createAccountVC else {return}
        createAccountVc.title = Constants.createAccountButtonTitle.localized
        self.pushNavigate(viewController: createAccountVc)
    }
    func doShowSignIn(){
        let loginVc = LoginModuleLibrary().loginViewController()
        loginVc.title = Constants.signInButtonTitle.localized
        self.pushNavigate(viewController: loginVc)
    }
    
}
