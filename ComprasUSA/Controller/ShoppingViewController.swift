//
//  ViewController.swift
//  ComprasUSA
//
//  Created by Rafael Rodrigues on 16/08/22.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlets

    @IBOutlet weak var tfDolar: UITextField!
    @IBOutlet weak var lbRealDescription: UILabel!
    @IBOutlet weak var lbReal: UILabel!
    


    //MARK: - View life cycle
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setAmmount()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        tfDolar.resignFirstResponder()
        setAmmount()
    }
    
    func setAmmount() {
        tc.shoppingValue = tc.convertToDouble(tfDolar.text!)
        lbReal.text = tc.getFormattedValue(of: tc.dolar * tc.shoppingValue, withCurrency: "R$ ")
        let dolar = tc.getFormattedValue(of: tc.dolar, withCurrency: "R$ ")
        lbRealDescription.text = "Valor sem impostos (dólar \(dolar))"
        
    }
    
    //MARK: - IBActions
    
    
    

}

