//
//  HomeviewPresenter.swift
//  persons_app
//
//  Created by Cuneyt on 2.12.2023.
//

import Foundation
class HomeviewPresenter:ViewToPresenterHomeViewProtocol{
    var homeViewInteractor: PresenterToInteractorHomeViewProtocol?
    
    var homeViewView: PresenterToViewHomeViewProtocol?
    
    func fetchAllUser() {
        homeViewInteractor?.fetchAllUser()
        
    }
    
    func searchUser(searchKey: String) {
        homeViewInteractor?.searchUser(searchKey: searchKey)
    }
    
    func deleteUser(Id: Int) {
        homeViewInteractor?.deleteUser(Id: Id)
    }
    
    
}

extension HomeviewPresenter:InteractorToPresenterHomeViewProtocol{
    func presenteraVeriGonder(kisilerListesi: Array<Person>) {
        homeViewView?.vieweVeriGonder(kisilerListesi: kisilerListesi)
    }
    
    
}
