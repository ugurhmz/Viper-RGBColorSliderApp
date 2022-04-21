//
//  HomeInteractor.swift
//  Viper-RGBSliderApp
//
//  Created by ugur-pc on 21.04.2022.
//

import UIKit


class HomeInteractor: HomeInteractorProtocol {
    
    
    var appColorDao: AppColorDao?
    
    init(dao: AppColorDao = AppColorDao()) {
        appColorDao = dao
    }
    
    
    func loadCurrentColor() -> (CGFloat, CGFloat, CGFloat) {
        let currentRgb = appColorDao?.fetch()
        return currentRgb!
    }
    
    func saveCurrentColor(rgb: (CGFloat, CGFloat, CGFloat)) -> (Void) {
        appColorDao?.save(rgb: rgb)
    }
 
    
    
}
