//
//  WelcomeViewModel.swift
//  DatingAppV2
//
//  Created by Edward Suwirya on 1/20/22.
//

import Foundation
import RxSwift

struct WelcomeViewModel{
    var welcomeUseCase: WelcomeUseCase?
    let existingMemberSubject: PublishSubject<Member?> = PublishSubject<Member?>()
    
    func doSignUpSignIn(){
        let member = welcomeUseCase?.call()
        existingMemberSubject.onNext(member)
    }
    
}
