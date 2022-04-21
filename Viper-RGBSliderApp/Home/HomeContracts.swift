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
}



//MARK: - Interactor
protocol HomeInteractorProtocol {
    var presenter: HomePresenterProtocol? { get set }
    
}




//MARK: - Presenter   - V.I.R
protocol HomePresenterProtocol {
    var view: HomeViewProtocol? { get set }
    var interactor: HomeInteractorProtocol? { get set }
    var router: HomeRouterProtocol? { get set}
}
typealias EntryPoint = HomeViewProtocol & UIViewController


//MARK: - Router
protocol HomeRouterProtocol {
    var viewController: EntryPoint? { get }
}
