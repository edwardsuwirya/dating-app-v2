//
//  ViewController.swift
//  DatingAppV2
//
//  Created by Edward Suwirya on 1/15/22.
//

import UIKit
import LoginModuleLibrary

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        guard let welcomeVc = AssemblerManager.welcomeVC else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.popAndPushNavigate(viewController: welcomeVc)
        }
    }
    
}

