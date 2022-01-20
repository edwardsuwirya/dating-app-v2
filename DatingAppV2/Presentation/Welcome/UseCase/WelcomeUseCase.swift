//
//  WelcomeUseCase.swift
//  DatingAppV2
//
//  Created by Edward Suwirya on 1/20/22.
//

import Foundation

struct WelcomeUseCase{
    var welcomeRepositoryProtocol:WelcomeRepositoryProtocol!
    
    func call() -> Member?{
        return welcomeRepositoryProtocol.fetchMember()
    }
}
