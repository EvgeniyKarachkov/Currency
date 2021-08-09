//
//  Data.swift
//  Currency
//
//  Created by Admin on 04.08.2021.
//

import Foundation

struct PriceOfBit: Decodable {
    let date: String?
    let btc: CountryCurrence?
}

struct CountryCurrence: Decodable {
    let rub: Double?
    let byn: Double?
    let kzt: Double?
    let usd: Double?
    
}
