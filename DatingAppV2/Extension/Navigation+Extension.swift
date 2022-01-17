//
//  Navigation+Extension.swift
//  DatingAppV2
//
//  Created by Edward Suwirya on 1/16/22.
//

import Foundation
import UIKit
extension UIViewController{
//    createAccountVc.navigationItem.leftBarButtonItem=UIBarButtonItem(title: "Cancel", style: .plain, target: nil, action: nil)
    
    func popAndPushNavigate(viewController:UIViewController){
        guard var viewControllers = self.navigationController?.viewControllers else { return }
        let _ = viewControllers.popLast()
        viewControllers.append(viewController)
        self.navigationController?.setViewControllers(viewControllers, animated: true)
    }
    
    func pushNavigate(viewController:UIViewController){
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func popToRootNavigate(viewController:UIViewController){
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}


