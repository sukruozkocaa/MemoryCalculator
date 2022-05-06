//
//  ViewController.swift
//  MemoryCalculator
//
//  Created by Şükrü Özkoca on 6.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var num2: UITextField!
    @IBOutlet weak var savedResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let savedNumber = UserDefaults.standard.object(forKey: "saved")
        if let newNumber = savedNumber as? String {
            savedResult.text = newNumber
        }
    }
    @IBAction func plusClicked(_ sender: Any) {
        let deger = Hesapla(number1: Int(num1.text!)!, number2: Int(num2.text!)!, operation: "+")
        resultLabel.text = String(deger)

    }
    @IBAction func minusClicked(_ sender: Any) {
        let deger = Hesapla(number1: Int(num1.text!)!, number2: Int(num2.text!)!, operation: "-")
        resultLabel.text = String(deger)
    }
    @IBAction func divisionClicked(_ sender: Any) {
        let deger = Hesapla(number1: Int(num1.text!)!, number2: Int(num2.text!)!, operation: "*")
        resultLabel.text = String(deger)
    }
    @IBAction func multiplicationClicked(_ sender: Any) {
        let deger = Hesapla(number1: Int(num1.text!)!, number2: Int(num2.text!)!, operation: "/")
        resultLabel.text = String(deger)
    }
    @IBAction func saveClicked(_ sender: Any) {
        UserDefaults.standard.set(savedResult.text!, forKey: "saved")
        savedResult.text = resultLabel.text
       
        
    }
    
    func Hesapla(number1 : Int ,number2 : Int ,operation : String) -> Int {
        var result: Int
        if operation == "+"
        {
            result = number1+number2
        }
        else if operation == "-" {
            result = number1-number2
        }
        else if operation == "*" {
            result = number1*number2
        }
        else {
            result = number1/number2
        }
        return result
    }
}
    
    



