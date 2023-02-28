//
//  ViewController.swift
//  TemperatureSliderConverter
//
//  Created by Andrew Iskowitz on 2/28/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var celsiusLabel: UILabel!
    
    @IBOutlet var fahrenheitLabel: UILabel!
    
    @IBOutlet var slider: UISlider!{
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = -100
            slider.value = 0
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let tempratureCelcius = Int(round(sender.value))
        celsiusLabel.text = "\(tempratureCelcius) °C"
        let tempratureFahrenheit = Int(round((sender.value * 9/5) + 32))
        fahrenheitLabel.text = "\(tempratureFahrenheit)°F"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

