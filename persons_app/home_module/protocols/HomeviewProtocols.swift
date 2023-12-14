//
//  HomeviewProtocols.swift
//  persons_app
//
//  Created by Cuneyt on 2.12.2023.
//

import Foundation

//ANA Protokoller
protocol ViewToPresenterHomeViewProtocol {
    var homeViewInteractor:PresenterToInteractorHomeViewProtocol? {get set}
    var homeViewView:PresenterToViewHomeViewProtocol? {get set}
    
    func fetchAllUser()
    func searchUser(searchKey:String)
    func deleteUser(Id:Int)
    
}
protocol PresenterToInteractorHomeViewProtocol {
    var homeViewPresenter :InteractorToPresenterHomeViewProtocol? {get set}
    
    func fetchAllUser()
    func searchUser(searchKey:String)
    func deleteUser(Id:Int)
    
}
//Taşıyıcı
protocol PresenterToViewHomeViewProtocol {
    func vieweVeriGonder(kisilerListesi:Array<Person>)
    
}
protocol InteractorToPresenterHomeViewProtocol {
    func presenteraVeriGonder(kisilerListesi:Array<Person>)
    
}

//yetkilendirme
protocol PresenterToRouterHomeViewProtocol{
    
    static func createModule(ref:HomeViewController)
   
}


