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
        
        // label
        settingColorAndValue()
    }
    
    @IBAction func rgbActionSlider() {
        changesBackgroundColor()
    }
    
    
    
    private func changesBackgroundColor(){
        viewColor.backgroundColor =  UIColor(red: CGFloat(redSlider.value) , green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    private func settingColorAndValue(){
        labelRed.textColor = .red
        labelGreen.textColor = .green
        labelBlue.textColor = .blue
        labelRed.text = "Red: \(String(format: "%.2f", redSlider.value))"
        labelGreen.text = "Green: \(String(format: "%.2f", greenSlider.value))"
        labelBlue.text = "Blue:  \(String(format: "%.2f", blueSlider.value))"
    }
    
}

