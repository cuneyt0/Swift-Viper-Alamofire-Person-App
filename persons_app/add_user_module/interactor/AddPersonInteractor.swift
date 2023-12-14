//
//  AddPersonInteractor.swift
//  persons_app
//
//  Created by Cuneyt on 2.12.2023.
//

import Foundation
class AddPersonInteractor : PresenterToInteractorAddPersonProtocol{
    func addPerson(user_name: String, number: String) {
        print("UserName \(user_name ) tel \(number )")
    }
    
    
}
