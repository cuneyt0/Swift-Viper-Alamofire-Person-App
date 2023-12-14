//
//  AddPersonPresenter.swift
//  persons_app
//
//  Created by Cuneyt on 2.12.2023.
//

import Foundation
class AddPersonPresenter : ViewToPresenterAddPersonProtocol{
    //Mark: presenter katmanına veri aktarmak için bir nesne olusturduk

    var addPersonInteractor: PresenterToInteractorAddPersonProtocol?
    
    func addPerson(user_name: String, number: String) {
        addPersonInteractor?.addPerson(user_name: user_name, number: number)
    }
    
    
}
