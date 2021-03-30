//
//  ViewController.swift
//  sliderColor
//
//  Created by ErrorV9 on 27.03.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var labelRed: UILabel!
    @IBOutlet weak var labelBlue: UILabel!
    @IBOutlet weak var labelGreen: UILabel!
    
    @IBOutlet weak var viewColor: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //sliders colors tint
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        
        // view
        viewColor.layer.cornerRadius = 10
        changesBackgroundColor()
        setValue(labelRed, labelGreen, labelBlue)
        // label
        
    }
    
    
    @IBAction func rgbActionSlider(_ sender: UISlider) {
        changesBackgroundColor()
        
        switch sender {
        case redSlider:
            setValue(labelRed)
        case greenSlider:
            setValue(labelGreen)
        default:
            setValue(labelBlue)
        }
    }
    
    
    private func changesBackgroundColor(){
        viewColor.backgroundColor =  UIColor(red: CGFloat(redSlider.value) , green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    private func setValue(_ labels: UILabel...){
        labels.forEach { label in
            switch label {
            case labelRed:
                label.textColor = .red
                label.text = string(from: redSlider)
            case labelGreen:
                label.textColor = .green
                label.text = string(from: greenSlider)
            default:
                label.textColor = .blue
            label.text = string(from: blueSlider)
            
            }
        }
   
}
    private func string(from slider: UISlider) -> String {
                String(format: "%.2f", slider.value)
    }

}
