//
//  HomePresenter.swift
//  Viper-RGBSliderApp
//
//  Created by ugur-pc on 21.04.2022.
//

import Foundation
import UIKit

class HomePresenter: HomePresenterProtocol {
    
   
    
    var view: HomeViewProtocol?
    var interactor: HomeInteractorProtocol?
    var router: HomeRouterProtocol?
  
    
    func onLoadCurrentColor() {
        
        DispatchQueue.global(qos: .background).async { [weak self] in
            
            guard let  strongSelf = self else { return }
            
            let currentRgb = strongSelf.interactor?.loadCurrentColor()
            
            DispatchQueue.main.async {
                strongSelf.view?.loadCurrentColor(rgb: currentRgb!)
            }
        }
    }
    
    
    func onValueChange(rgb: (CGFloat,CGFloat, CGFloat)) -> (Void) {
        DispatchQueue.global(qos: .background).async { [weak self] in
            guard let strongSelf = self else {return }
            strongSelf.interactor?.saveCurrentColor(rgb: rgb)
        }
    }
    
    
    
    
}
