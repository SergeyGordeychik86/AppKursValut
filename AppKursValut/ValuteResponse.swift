//
//  ValuteResponse.swift
//  AppKursValut
//
//  Created by MacBook on 03.05.2021.
//

import Foundation
import UIKit
import SwiftUI



struct ValuteResponse : Codable, Hashable, Identifiable {
    var id: UUID
    

    
    let cur_ID : Int
    let date : String
    let cur_Abbreviation : String
   let cur_Scale : Int
   let cur_Name : String
    let cur_OfficialRate : Double

    enum CodingKeys: String, CodingKey {
      case id = "id"
        case cur_ID = "Cur_ID"
        case date = "Date"
        case cur_Abbreviation = "Cur_Abbreviation"
        case cur_Scale = "Cur_Scale"
        case cur_Name = "Cur_Name"
        case cur_OfficialRate = "Cur_OfficialRate"
    }
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//        cur_ID = try values.decodeIfPresent(Int.self, forKey: .cur_ID)
//        date = try values.decodeIfPresent(String.self, forKey: .date)
//        cur_Abbreviation = try values.decodeIfPresent(String.self, forKey: .cur_Abbreviation)
//        cur_Scale = try values.decodeIfPresent(Int.self, forKey: .cur_Scale)
//        cur_Name = try values.decodeIfPresent(String.self, forKey: .cur_Name)
//        cur_OfficialRate = try values.decodeIfPresent(Double.self, forKey: .cur_OfficialRate)
//        id = try values.decodeIfPresent(Int.self, forKey: .id)
//    }
}
