//
//  TaxesViewController.swift
//  ComprasUSA
//
//  Created by Rafael Rodrigues on 16/08/22.
//

import UIKit

class TaxesViewController: UIViewController {

    
    //MARK: - IBOutlets
    

    @IBOutlet weak var lbStateTaxDescription: UILabel!
    @IBOutlet weak var lbDolar: UILabel!
    @IBOutlet weak var lbStateTax: UILabel!
    @IBOutlet weak var lbIOFDescription: UILabel!
    @IBOutlet weak var lbIOF: UILabel!
    @IBOutlet weak var swCreditCard: UISwitch!
    @IBOutlet weak var lbReal: UILabel!
    
    //MARK: - View cycle life
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        calculateTaxes()
    }
    
    func calculateTaxes () {
        lbStateTaxDescription.text = "Imposto do estado (\(tc.getFormattedValue(of: tc.stateTax, withCurrency: ""))%)"
        lbIOFDescription.text = "I.O.F (\(tc.getFormattedValue(of: tc.iof, withCurrency: ""))%)"
        lbDolar.text = tc.getFormattedValue(of: tc.shoppingValue, withCurrency: "US$ ")
        lbStateTax.text = tc.getFormattedValue(of: tc.stateTaxValue, withCurrency: "US$ ")
        lbIOF.text = tc.getFormattedValue(of: tc.iofValue, withCurrency: "US$ ")

        
        let real = tc.calculate(usingCreditCard: swCreditCard.isOn)
        lbReal.text = tc.getFormattedValue(of: real, withCurrency: "R$ ")
    }
    
    // MARK: - IBActions

    @IBAction func changeIOF(_ sender: UISwitch) {
        calculateTaxes()
    }
    
    
    
}
