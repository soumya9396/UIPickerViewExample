//
//  ViewController.swift
//  UIPickerViewExample
//
//  Created by Soumitra Bera on 09/04/22.
//

import UIKit

enum Direction: String, CaseIterable {
   case North
   case South
   case East
   case West
}
class ViewController: UIViewController {

    @IBOutlet weak var pickerView: UIPickerView!
    
    var pickerData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickerData = ["North","South","East","West"]
    }
}
extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
   
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        debugPrint(pickerData[row])
    }
}
