//
//  SettingsViewController.swift
//  ComprasUSA
//
//  Created by Rafael Rodrigues on 16/08/22.
//

import UIKit

class SettingsViewController: UIViewController {
//MARK: - IBOutlets

    @IBOutlet weak var tfDolar: UITextField!
    
    @IBOutlet weak var tfIOF: UITextField!
    
    @IBOutlet weak var tdStateTaxes: UITextField!
    

//MARK: - View life cycle


    override func viewDidLoad() {
        super.viewDidLoad()

        tfDolar.text = tc.getFormattedValue(of: tc.dolar, withCurrency: "")
        tfIOF.text = tc.getFormattedValue(of: tc.iof, withCurrency: "")
        tdStateTaxes.text = tc.getFormattedValue(of: tc.stateTax, withCurrency: "")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func setValues () {
        
        tc.dolar = tc.convertToDouble(tfDolar.text!)
        tc.iof = tc.convertToDouble(tfIOF.text!)
        tc.stateTax = tc.convertToDouble(tdStateTaxes.text!)

        
    }
}

extension SettingsViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        setValues()
    }
}



