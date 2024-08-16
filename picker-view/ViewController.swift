//
//  ViewController.swift
//  picker-view
//
//  Created by Mac User on 8/16/24.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var items = [
        ["January", "Febuary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
        ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
        ["2023", "2024"]
        
    ]
    
    @IBOutlet weak var displayDate: UILabel!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        displayDate.text = "\(items[0][row]) - \(items[1][row])"
        return items[component][row]
    }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

