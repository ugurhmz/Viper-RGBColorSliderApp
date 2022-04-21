//
//  ViewController.swift
//  Viper-RGBSliderApp
//
//  Created by ugur-pc on 21.04.2022.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    @IBOutlet weak var rgbLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
      
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
    }
    
}
