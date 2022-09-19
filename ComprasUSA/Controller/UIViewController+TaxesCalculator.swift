//
//  UIViewController+TaxesCalculator.swift
//  ComprasUSA
//
//  Created by Rafael Rodrigues on 19/08/22.
//

import Foundation
import UIKit


extension UIViewController {
    var tc: TaxesCalculator {
        return TaxesCalculator.shared
    }
}
