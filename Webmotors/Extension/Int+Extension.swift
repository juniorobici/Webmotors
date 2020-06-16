//
//  Int+Extension.swift
//  Webmotors
//
//  Created by Junior Obici on 15/06/20.
//  Copyright © 2020 Junior Obici. All rights reserved.
//

import UIKit

extension Int {
    func formatNumber() -> String {
        let formater = NumberFormatter()
        formater.groupingSeparator = "."
        formater.numberStyle = .decimal
        return formater.string(from: NSNumber(value: self))!
    }
}
