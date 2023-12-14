//
//  AddPersonRouter.swift
//  persons_app
//
//  Created by Cuneyt on 2.12.2023.
//

import Foundation
class AddPersonRouter : PresenterToRouterAddPersonProtocol{
    //Bu katmanda ilgili sayfalarda oluşturdugumuz nesnelerin atamalarını yaptık.Yetkilerini verdik.
    static func createModule(ref: AddPersonViewController) {
        ref.addPersonPresenter = AddPersonPresenter()
        ref.addPersonPresenter?.addPersonInteractor = AddPersonInteractor()
    }
    
    
}
