//
//  String+Extension.swift
//  Webmotors
//
//  Created by Junior Obici on 15/06/20.
//  Copyright © 2020 Junior Obici. All rights reserved.
//

import UIKit

extension String {
    var Moeda: String {
        let valor = NSDecimalNumber(string: self) as NSNumber
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "pt_BR")
        formatter.string(from: valor)
        if let valorFormatter = formatter.string(from: valor) {
            return valorFormatter
        } else {
            return "error"
        }
    }
}
