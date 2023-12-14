//
//  UserDetailProtocols.swift
//  persons_app
//
//  Created by Cuneyt on 2.12.2023.
//

import Foundation
protocol ViewToPresenterDetailPersonProtocol {
    //Mark:Presenter katmanından interactor katmanını tetiklemek için değişken oluşturduk.Değişken adı kullanılacak katmanın adı
    var userDetailInteractor:PresenterToInteractorDetailPersonProtocol? {get set}
    

    
    func updatePerson(user_id:Int,user_name:String,number:String)
    
}

protocol PresenterToInteractorDetailPersonProtocol{
    
    func updatePerson(user_id:Int,user_name:String,number:String)
    
}

protocol PresenterToRouterDetailPersonProtocol{
    
    static func  createModule(ref:DetailPersonViewController)
    
}

