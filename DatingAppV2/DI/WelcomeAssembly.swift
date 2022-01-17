//
//  WelcomeAssembly.swift
//  DatingAppV2
//
//  Created by Edward Suwirya on 1/15/22.
//

import Foundation
import Swinject

public class WelcomeAssembly: Assembly{
    public func assemble(container: Container) {
        container.register(WelcomeViewController.self){ _ in
            WelcomeViewController()
        }
    }
}
