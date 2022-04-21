//
//  ViewController.swift
//  Viper-RGBSliderApp
//
//  Created by ugur-pc on 21.04.2022.
//

import UIKit

class HomeVC: UIViewController {

    var presenter: HomePresenterProtocol?
    
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    @IBOutlet weak var rgbLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadCurrentColor()
      
    }

    
    @IBAction func onRedChanged(_ sender: UISlider) {
        print(sender.value)
        onColorValueChange()
    }
    
    

    @IBAction func onGreenValueChanged(_ sender: UISlider) {
        print(sender.value )
        onColorValueChange()
    }
    
    
    @IBAction func onBlueValueChanged(_ sender: UISlider) {
        print(sender.value)
        onColorValueChange()
    }
    
    
    // save color
    func saveCurrentColor(rgb: (CGFloat, CGFloat, CGFloat)) -> (Void) {
        presenter?.onValueChange(rgb: rgb)
    }
    
    
    
    // load current color
    func loadCurrentColor() -> () {
        
      // view presenter ile konuştuğu için, view'da yazılacak bir funca, presenterin delegate ile
      // veri yolluyoruz
        
        presenter?.onLoadCurrentColor()
    }
    
}



//MARK: - Contract
extension HomeVC: HomeViewProtocol {
    func loadCurrentColor(rgb: (CGFloat, CGFloat, CGFloat)) {
        
        
      

        sliderRed.value = Float(rgb.0)
        sliderGreen.value = Float(rgb.1)
        sliderBlue.value = Float(rgb.2)


        rgbLabel.text = "RGB ( \(rgb.0), \(rgb.1), \(rgb.2) )"
        self.view.backgroundColor = UIColor(red: rgb.0/255,
                                            green: rgb.1/255,
                                            blue: rgb.2/255, alpha: 1)
    }
}



//MARK: -
extension HomeVC: HomeColorValueDelegateProtocol {
    
    
    func onColorValueChange() {
        
        let step: Float = 1
        
        let red = CGFloat( round(sliderRed.value / step) * step)
        let green = CGFloat(round(sliderGreen.value / step) * step)
        let blue = CGFloat(round(sliderBlue.value / step) * step)
        
        rgbLabel.text = "RGB ( \(red), \(green), \(blue) )"
        
        self.view.backgroundColor = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
      
        self.saveCurrentColor(rgb: (red, green, blue))
        
    }
    
}
