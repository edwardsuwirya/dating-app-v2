//
//  WelcomeAssembly.swift
//  DatingAppV2
//
//  Created by Edward Suwirya on 1/20/22.
//

import Foundation
import Swinject
import CoreDataLibrary
import CoreData


class WelcomeAssembly: Assembly{
    func assemble(container: Container) {
        container.register(WelcomeRepositoryProtocol.self){ r in
            WelcomeRepository(dbContext: r.resolve(NSManagedObjectContext.self)!)
        }
        
        container.register(WelcomeUseCase.self){ r in
            WelcomeUseCase(welcomeRepositoryProtocol: r.resolve(WelcomeRepositoryProtocol.self))
        }
        
        container.register(WelcomeViewModel.self){ r in
            WelcomeViewModel(welcomeUseCase: r.resolve(WelcomeUseCase.self))
        }
        
        container.register(WelcomeViewController.self){ r in
            let welcomeVc = WelcomeViewController()
            welcomeVc.welcomeViewModel = r.resolve(WelcomeViewModel.self)
            return welcomeVc
        }
    }
}
