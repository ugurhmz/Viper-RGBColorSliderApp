//
//  HomeBuilder.swift
//  Viper-RGBSliderApp
//
//  Created by ugur-pc on 21.04.2022.
//

import Foundation
import UIKit


class HomeBuilder {
    
    static func createModule() -> UIViewController {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        guard let view = storyBoard.instantiateViewController(withIdentifier: "homeVC") as? HomeVC else { return  UIViewController() }
    
        let presenter = HomePresenter()
        let interactor = HomeInteractor()
        let router = HomeRouter()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        router.viewController = view
        
        return view
    }
    
}
