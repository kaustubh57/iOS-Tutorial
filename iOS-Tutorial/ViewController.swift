//
//  ViewController.swift
//  iOS-Tutorial
//
//  Created by Kaustubh Kesarkar on 12/21/16.
//  Copyright © 2016 com.devkau. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var displayDayOfWeekLabel: UILabel!
    

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
    
}

