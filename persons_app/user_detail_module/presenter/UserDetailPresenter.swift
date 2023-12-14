//
//  UserDetailPresenter.swift
//  persons_app
//
//  Created by Cuneyt on 2.12.2023.
//

import Foundation
class UserDetailPresenter:ViewToPresenterDetailPersonProtocol{
    //Mark: presenter katmanına veri aktarmak için bir nesne olusturduk
    var userDetailInteractor: PresenterToInteractorDetailPersonProtocol?
    
    func updatePerson(user_id: Int, user_name: String, number: String) {
        userDetailInteractor?.updatePerson(user_id: user_id, user_name: user_name, number: number)
    }
    
  

   
}
