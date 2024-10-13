//
//  ViewController.swift
//  PaletteExample
//
//  Created by Рома Подлипняк on 13.10.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redValueSlider: UISlider!
    @IBOutlet weak var greenValueSlider: UISlider!
    @IBOutlet weak var blueValueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redValueSlider.value = 127
        greenValueSlider.value = 127
        blueValueSlider.value = 127
        redValueLabel.text = "127"
        greenValueLabel.text = "127"
        blueValueLabel.text = "127"
        colorView.backgroundColor = UIColor(red: 127 / 255.0,
                                            green: 127 / 255.0,
                                            blue: 127 / 255.0,
                                            alpha: 1.0)
    }

    @IBAction func minPressed(_ sender: Any) {
        redValueSlider.value = 0
        greenValueSlider.value = 0
        blueValueSlider.value = 0
        redValueLabel.text = "0"
        greenValueLabel.text = "0"
        blueValueLabel.text = "0"
        colorView.backgroundColor = UIColor(red: 0 / 255.0,
                                            green: 0 / 255.0,
                                            blue: 0 / 255.0,
                                            alpha: 1.0)
    }
    
    @IBAction func mediumPressed(_ sender: Any) {
        redValueSlider.value = 127
        greenValueSlider.value = 127
        blueValueSlider.value = 127
        redValueLabel.text = "127"
        greenValueLabel.text = "127"
        blueValueLabel.text = "127"
        colorView.backgroundColor = UIColor(red: 127 / 255.0,
                                            green: 127 / 255.0,
                                            blue: 127 / 255.0,
                                            alpha: 1.0)
    }
    
    @IBAction func maxPressed(_ sender: Any) {
        redValueSlider.value = 255
        greenValueSlider.value = 255
        blueValueSlider.value = 255
        redValueLabel.text = "255"
        greenValueLabel.text = "255"
        blueValueLabel.text = "255"
        colorView.backgroundColor = UIColor(red: 255 / 255.0,
                                            green: 255 / 255.0,
                                            blue: 255 / 255.0,
                                            alpha: 1.0)
    }
    
    @IBAction func redValueChanged(_ sender: Any) {
        redValueLabel.text = "\(Int(redValueSlider.value))"
        colorView.backgroundColor = UIColor(red: CGFloat(redValueSlider.value) / 255.0,
                                            green: CGFloat(greenValueSlider.value) / 255.0,
                                            blue: CGFloat(blueValueSlider.value) / 255.0,
                                            alpha: 1.0)
    }
    
    @IBAction func greenValueChanged(_ sender: Any) {
        greenValueLabel.text = "\(Int(greenValueSlider.value))"
        colorView.backgroundColor = UIColor(red: CGFloat(redValueSlider.value) / 255.0,
                                            green: CGFloat(greenValueSlider.value) / 255.0,
                                            blue: CGFloat(blueValueSlider.value) / 255.0,
                                            alpha: 1.0)
    }
    
    @IBAction func blueValueChanged(_ sender: Any) {
        blueValueLabel.text = "\(Int(blueValueSlider.value))"
        colorView.backgroundColor = UIColor(red: CGFloat(redValueSlider.value) / 255.0,
                                            green: CGFloat(greenValueSlider.value) / 255.0,
                                            blue: CGFloat(blueValueSlider.value) / 255.0,
                                            alpha: 1.0)
    }
    
    
}

