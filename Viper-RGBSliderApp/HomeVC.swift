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
    }
    
    

    @IBAction func onGreenValueChanged(_ sender: UISlider) {
        print(sender.value )
    }
    
    
    @IBAction func onBlueValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
}

