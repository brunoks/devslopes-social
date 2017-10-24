//
//  CurrentWeather.swift
//  MostraUCL
//
//  Created by Bruno Vieira on 26/09/17.
//  Copyright © 2017 Bruno Vieira. All rights reserved.
//

import Foundation

class CurrentWeather {
    
    let temperature: String?
    let humidity: Int?
    let precipProbability: Int?
    let summary: String?
    let icon: String?
    
    struct WeatherKeys {
        static let temperature = "codigo"
        static let humidity = "humidity"
        static let precipProbability = "precipProbability"
        static let summary = "summary"
        static let icon = "icon"
    }
    init(weatherDictionary: [String : Any]) {
        temperature = weatherDictionary[WeatherKeys.temperature] as? String
        
        
        if let humidityDouble = weatherDictionary[WeatherKeys.humidity] as? Double {
            humidity = Int(humidityDouble * 100)
        } else {
            humidity = nil
        }
        
        if let precipDouble = weatherDictionary[WeatherKeys.precipProbability] as? Double {
            precipProbability = Int(precipDouble * 100)
        } else {
            precipProbability = nil
        }
        summary = weatherDictionary[WeatherKeys.summary] as? String
        icon = weatherDictionary[WeatherKeys.icon] as? String
    }
}
