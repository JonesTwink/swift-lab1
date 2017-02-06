//
//  ViewController.swift
//  lab1
//
//  Created by Admin on 06.02.17.
//  Copyright © 2017 arthur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputMain: UITextField!
    @IBOutlet weak var inputVoltage: UITextField!
    
    @IBOutlet weak var labelFirst: UILabel!
    @IBOutlet weak var labelSecond: UILabel!
    @IBOutlet weak var labelThird: UILabel!
    
    @IBOutlet weak var btnConvert: UIButton!
    
    let converter = ConverterModel()
    
    @IBAction func handleConvertButtonClick(){

        if (validateInput() == true){
            convertValuesAndUpdateUI()
        }
        
    }
    
    func convertValuesAndUpdateUI(){
        labelFirst.text = converter.convertToWattHours();
        labelSecond.text = converter.convertToCoulHours();
        labelThird.text = converter.convertToAmpereHours();
    }
    
    func validateInput()->Bool{
        if let capacity = Double (inputMain.text!){
            converter.capacity = capacity
        }
        else{
            showErrorPopup(msg: "Введите корректное значение емкости!")
            return false
        }
        if let voltage = Double(inputVoltage.text!){
            converter.voltage = voltage
            return true
        }
        else{
            showErrorPopup(msg: "Введите корректное значение напряжения!")
            return false
        }
    }
    
    func showErrorPopup(msg: String){
        let alertController = UIAlertController(title: "Ошибка ввода", message: msg, preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "ОК", style: UIAlertActionStyle.default,handler: nil))
        self.present(alertController, animated: true, completion: nil)
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

