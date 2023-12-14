//
//  HomeviewInteractor.swift
//  persons_app
//
//  Created by Cuneyt on 2.12.2023.
//

import Foundation
class HomeviewInteractor:PresenterToInteractorHomeViewProtocol{
    var homeViewPresenter: InteractorToPresenterHomeViewProtocol?
    
    func fetchAllUser() {
        var personList = [Person]()
        let k1 = Person(id: 1,name: "Ahmet",phoneNumber: "5454333333")
        let k2 = Person(id: 1,name: "Mehmet",phoneNumber: "5454")
        personList.append(k1)
        personList.append(k2)
        homeViewPresenter?.presenteraVeriGonder(kisilerListesi: personList)
    }
    
    func searchUser(searchKey: String) {
        print("Aranan Metin \(searchKey)")
    }
    
    func deleteUser(Id: Int) {
        print("\(Id) silindi")
    }
}
