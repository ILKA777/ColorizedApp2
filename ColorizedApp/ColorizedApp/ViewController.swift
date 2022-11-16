//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Илья Морин on 29.10.2022.
//
import Foundation
import UIKit



class ViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    @IBOutlet var blueLabelValue: UILabel!
    @IBOutlet var greenLabelValue: UILabel!
    @IBOutlet var redLabelValue: UILabel!
    @IBOutlet var sliderBlue: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderRed: UISlider!
    
    var delegate: ViewControllerDelegate!
    var mainViewColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSliders()
        setupValueLabels()
        setupView()
        mainView.backgroundColor = mainViewColor;
        //sliderRed.value = Float(mainView.backgroundColor?.ciColor.red ?? 0)
        //sliderGreen.value = 0
        //sliderBlue.value = 0
        
        
    }
    

    @IBAction func blueSliderValue(_ sender: UISlider) {
        blueLabelValue.text = (round(sliderBlue.value * 100) / 100).formatted()
        mainView.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat (sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
    }
    
    @IBAction func greenSliderValue(_ sender: UISlider) {
        greenLabelValue.text = (round(sliderGreen.value * 100) / 100).formatted()
        mainView.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat (sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
    }
    @IBAction func redSliderValue(_ sender: UISlider) {
        redLabelValue.text = (round(sliderRed.value * 100) / 100).formatted()
        mainView.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat (sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
    }
    
    private func setupValueLabels() {
        redLabelValue.text = sliderRed.value.formatted()
        blueLabelValue.text = sliderBlue.value.formatted()
        greenLabelValue.text = sliderGreen.value.formatted()
    }
    
    private func setupSliders() {
        sliderRed.value = 0
        sliderGreen.value = 0
        sliderBlue.value = 0
        sliderRed.minimumValue = 0
        sliderBlue.minimumValue = 0
        sliderGreen.minimumValue = 0
        
    }
    
    
    private func setupView () {
        mainView.layer.cornerRadius = 15
        mainView.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat (sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
    }
    
    
    
    
    
    @IBAction func exitButtonPressed() {
        delegate.setNewBackColor(for: mainView.backgroundColor ?? UIColor.systemBackground)
        dismiss(animated: true)
    }
}



