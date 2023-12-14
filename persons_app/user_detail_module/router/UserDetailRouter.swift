//
//  UserDetailRouter.swift
//  persons_app
//
//  Created by Cuneyt on 2.12.2023.
//

import Foundation
class UserDetailRouter:PresenterToRouterDetailPersonProtocol{
    static func createModule(ref: DetailPersonViewController) {
        ref.userDetailPresenter = UserDetailPresenter()
        ref.userDetailPresenter?.userDetailInteractor = UserDetailInteractor()
    }
    
    
}
