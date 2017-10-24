//
//  Keys.swift
//  MostraUCL3
//
//  Created by Bruno Vieira on 03/10/17.
//  Copyright © 2017 Bruno Vieira. All rights reserved.
//

import Foundation

class CurrentKeys {
let parametro: String?

struct WeatherKeys {
    static let parametro = "detail"

}
init(weatherDictionary: [String : Any]) {
    parametro = weatherDictionary[WeatherKeys.parametro] as? String
    
    
}
