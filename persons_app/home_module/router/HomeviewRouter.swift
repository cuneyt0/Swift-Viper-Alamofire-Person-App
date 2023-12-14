//
//  HomeviewRouter.swift
//  persons_app
//
//  Created by Cuneyt on 2.12.2023.
//

import Foundation
class HomeviewRouter:PresenterToRouterHomeViewProtocol{
    static func createModule(ref: HomeViewController) {
        let presenter = HomeviewPresenter()
        
        ref.homeviewPresenterObject = presenter
        ref.homeviewPresenterObject?.homeViewView=ref
        ref.homeviewPresenterObject?.homeViewInteractor=HomeviewInteractor()
        ref.homeviewPresenterObject?.homeViewInteractor?.homeViewPresenter = presenter
    }
    
    
}
