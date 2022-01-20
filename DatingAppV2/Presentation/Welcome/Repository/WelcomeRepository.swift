//
//  WelcomeRepository.swift
//  DatingAppV2
//
//  Created by Edward Suwirya on 1/20/22.
//

import Foundation
import CoreDataLibrary
import CoreData

protocol WelcomeRepositoryProtocol{
    func fetchMember() -> Member?
}

struct WelcomeRepository : WelcomeRepositoryProtocol{
    var dbContext: NSManagedObjectContext?
    
    init(dbContext: NSManagedObjectContext){
        self.dbContext = dbContext
    }
    
    func fetchMember() -> Member? {
        guard let ctx = self.dbContext else{
            return nil
        }
        print("Dbcontext id Welcome: \(Unmanaged.passUnretained(self.dbContext!).toOpaque())")
        let request:NSFetchRequest<MemberEntity> = MemberEntity.fetchRequest()
        request.fetchLimit = 1
        
        do{
            let memberEntity = try ctx.fetch(request).first
            guard let member = memberEntity else { return nil }
            let existingMember = Member(name: member.name ?? "", memberId: member.member_id!)
            return existingMember
        }catch{
            return nil
        }
    }
    
    
}
