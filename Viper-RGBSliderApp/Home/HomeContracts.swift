//
//  HomeContracts.swift
//  Viper-RGBSliderApp
//
//  Created by ugur-pc on 21.04.2022.
//

import Foundation
import UIKit

protocol HomeColorValueDelegateProtocol {
    func onColorValueChange()
}



//MARK: - View
protocol HomeViewProtocol {
    var presenter: HomePresenterProtocol? { get set }
    func loadCurrentColor(rgb: (CGFloat, CGFloat, CGFloat)) -> (Void)
}



//MARK: - Interactor
protocol HomeInteractorProtocol {
    
    func loadCurrentColor() -> (CGFloat, CGFloat, CGFloat)
    func saveCurrentColor(rgb: (CGFloat, CGFloat, CGFloat)) -> ()
}




//MARK: - Presenter   - V.I.R
protocol HomePresenterProtocol {
    var view: HomeViewProtocol? { get set }
    var interactor: HomeInteractorProtocol? { get set }
    var router: HomeRouterProtocol? { get set}
    
    func onLoadCurrentColor() -> ()
    func onValueChange(rgb: (CGFloat, CGFloat, CGFloat)) -> ()
    
}


typealias EntryPoint = HomeViewProtocol & UIViewController


//MARK: - Router
protocol HomeRouterProtocol {
    var viewController: EntryPoint? { get }
}
