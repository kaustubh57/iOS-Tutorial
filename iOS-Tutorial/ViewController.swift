//
//  ViewController.swift
//  iOS-Tutorial
//
//  Created by Kaustubh Kesarkar on 12/21/16.
//  Copyright © 2016 com.devkau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    

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


}

