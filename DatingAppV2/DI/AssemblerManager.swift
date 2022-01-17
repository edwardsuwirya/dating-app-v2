//
//  AssemblyManager.swift
//  DatingAppV2
//
//  Created by Edward Suwirya on 1/15/22.
//

import Foundation
import Swinject
import BaseNetworkLibrary
import CreateAccountModuleLibrary
import CoreDataLibrary
import CoreData

class AssemblerManager{
    static let container = Container()
    static let assembler = Assembler([
        CoreDataLibrary().dataAssembly(),
        BaseNetworkLibrary().networkAssembly(),
        WelcomeAssembly(),
        CreateAccountModuleLibrary().createAccountAssembly()
    ],container: container)
    
    static let welcomeVC = assembler.resolver.resolve(WelcomeViewController.self)
    static let createAccountVC = assembler.resolver.resolve(CreateAccountViewController.self)
    static let dbContext = assembler.resolver.resolve(NSManagedObjectContext.self)
}
