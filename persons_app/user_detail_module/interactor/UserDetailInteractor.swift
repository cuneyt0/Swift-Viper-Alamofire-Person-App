//
//  UserDetailInteractor.swift
//  persons_app
//
//  Created by Cuneyt on 2.12.2023.
//

import Foundation
class UserDetailInteractor : PresenterToInteractorDetailPersonProtocol{
    func updatePerson(user_id: Int, user_name: String, number: String) {
        print("UserName \(user_name ) tel \(number ) ID \(user_id)")
        
    }
    
}

