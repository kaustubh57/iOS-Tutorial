//
//  ViewController.swift
//  iOS-Tutorial
//
//  Created by Kaustubh Kesarkar on 12/21/16.
//  Copyright © 2016 com.devkau. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var displayDayOfWeekLabel: UILabel!
    
    var days: [String] = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Satuarday"]
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBAction func sliderMoved(_ sender: UISlider) {
        let percentValueOfSlider: Float = sender.value / sender.maximumValue
        progressBar.progress = percentValueOfSlider
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        label.text = textField.text
        textField.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.textField.resignFirstResponder()
        return false
    }

    @IBAction func updateWeekLabelButtonPressed(_ sender: Any) {
        let date:NSDate = datePicker.date as NSDate
        let formatter:DateFormatter = DateFormatter()
        formatter.dateFormat = "EEEE" // EEEE -> formatter is to display day of the week
        displayDayOfWeekLabel.text = formatter.string(from: date as Date)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return days.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return days[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("Selected day is... \(days[row])")
    }
    
    @IBAction func alertButtonClicked(_ sender: Any) {
        let alert: UIAlertController = UIAlertController(title: "Button tapped!", message: "A button was tapped on the screen...", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK...", style: .default) { (action:UIAlertAction) in
            print("You've pressed OK button")
        }

        alert.addAction(action)
        self.present(alert, animated: true){()-> Void in
            print("alert presented...")            
        }
    }
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBAction func switchClicked(_ sender: UISwitch) {
        if (sender.isOn) {
            activityIndicator.startAnimating()
        } else {
            activityIndicator.stopAnimating()
        }
    }
    @IBAction func segmentedControlTapped(_ sender: UISegmentedControl) {
        let index: Int = sender.selectedSegmentIndex
        let title: String = sender.titleForSegment(at: index)!
        print("Selected item is >>> \(title)")
    }
    

}

