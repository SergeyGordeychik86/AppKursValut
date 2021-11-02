//
//  CurrencyModel.swift
//  AppKursValut
//
//  Created by MacBook on 07.05.2021.
//

import Foundation
import UIKit
import SwiftUI

import Foundation

class CurrencyModel {
    static func getData(closure: @escaping ([ValuteResponse]) -> Void) {
        
        DispatchQueue.global(qos: .userInitiated).async { // для тяжелых задач
            let urlJason = URL(string: "https://www.nbrb.by/api/exrates/rates?periodicity=0")
            let jsonData = try? Data(contentsOf: urlJason!)
            let currencyArray = try! JSONDecoder().decode([ValuteResponse].self, from: jsonData!)
            let filteredCurrencyArray = currencyArray.filter({$0.cur_Abbreviation == "USD" || $0.cur_Abbreviation == "EUR" || $0.cur_Abbreviation == "GBP"})
            print(filteredCurrencyArray)
                
            DispatchQueue.main.async {
                closure(filteredCurrencyArray)
            }
        }
    }
}
