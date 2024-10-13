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
    
    let maxColorValue: Float = 255
    let minColorValue: Float = 0
    var mediumColorValue: Float{
        return (maxColorValue - minColorValue) / 2.0 + minColorValue
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetupForSliders()
        updateColorView()
    }

    @IBAction func minPressed(_ sender: Any) {
        updateAllSlidersValue(minColorValue)
        updateSlidersLabels()
        updateColorView()
    }
    
    @IBAction func mediumPressed(_ sender: Any) {
        updateAllSlidersValue(mediumColorValue)
        updateSlidersLabels()
        updateColorView()
    }
    
    @IBAction func maxPressed(_ sender: Any) {
        updateAllSlidersValue(maxColorValue)
        updateSlidersLabels()
        updateColorView()
    }
    
    @IBAction func redValueChanged(_ sender: Any) {
        updateSlidersLabels()
        updateColorView()
    }
    
    @IBAction func greenValueChanged(_ sender: Any) {
        updateSlidersLabels()
        updateColorView()
    }
    
    @IBAction func blueValueChanged(_ sender: Any) {
        updateSlidersLabels()
        updateColorView()
    }
    
    // MARK: - Optimization functions
    
    func updateColorView(){
        let redValueColor = CGFloat(redValueSlider.value) / CGFloat(maxColorValue)
        let greenValueColor = CGFloat(greenValueSlider.value) / CGFloat(maxColorValue)
        let blueValueColor = CGFloat(blueValueSlider.value) / CGFloat(maxColorValue)
        colorView.backgroundColor = UIColor(red: redValueColor,
                                            green: greenValueColor,
                                            blue: blueValueColor,
                                            alpha: 1.0)
    }
    
    func updateSlidersLabels(){
        redValueLabel.text = "\(Int(redValueSlider.value))"
        greenValueLabel.text = "\(Int(greenValueSlider.value))"
        blueValueLabel.text = "\(Int(blueValueSlider.value))"
    }
    
    func updateAllSlidersValue(_ value: Float){
        redValueSlider.value = value
        greenValueSlider.value = value
        blueValueSlider.value = value
    }
    
    func setupBoundaryValue(for slider: UISlider){
        slider.minimumValue = minColorValue
        slider.maximumValue = maxColorValue
    }
    
    func initialSetupForSliders(){
        setupBoundaryValue(for: redValueSlider)
        setupBoundaryValue(for: greenValueSlider)
        setupBoundaryValue(for: blueValueSlider)
        
        updateAllSlidersValue(mediumColorValue)
        updateSlidersLabels()
    }
}

