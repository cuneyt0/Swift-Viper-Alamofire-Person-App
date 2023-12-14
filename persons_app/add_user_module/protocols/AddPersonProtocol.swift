//
//  AddPersonProtocol.swift
//  persons_app
//
//  Created by Cuneyt on 2.12.2023.
//

import Foundation
//ANA PROTOKOLlER
protocol ViewToPresenterAddPersonProtocol {
    //Mark:Presenter katmanından interactor katmanını tetiklemek için değişken oluşturduk.Deişken adı kullanılacak katmanın adı
    var addPersonInteractor:PresenterToInteractorAddPersonProtocol? {get set}
    

    
    func addPerson(user_name:String,number:String)
    
}

protocol PresenterToInteractorAddPersonProtocol{
    
    func addPerson(user_name:String,number:String)
    
}

//YETKILENDIRME
protocol PresenterToRouterAddPersonProtocol{
    
    static func  createModule(ref:AddPersonViewController)
    
}
