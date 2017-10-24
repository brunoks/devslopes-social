//
//  ForecastService.swift
//  MostraUCL
//
//  Created by Bruno Vieira on 27/09/17.
//  Copyright © 2017 Bruno Vieira. All rights reserved.
//

import Foundation
import Alamofire

class ForecastService {
    //https://uclgo-test.agora.vix.br/uclgo/api/users/andrers@ucl.br/
    //https://uclgo-test.agora.vix.br/uclgo/api/cidades/
   //Sample url: https://api.darksky.net/forecast/ab671db46f3708ab005ff93be907b797/37.8267,-122.4233
    //https://uclgo-test.agora.vix.br/uclgo/api/tarefas/2/?format=json
    let forecastAPIKey: String
    let forecastBaseURL: URL?
    
//    minutely
    init(APIKey: String) {
        self.forecastAPIKey = APIKey
        forecastBaseURL = URL(string: "https://uclgo-test.agora.vix.br/uclgo/api/tarefas/2/?format=json")
    }
    
    func getCurrentWeather(id: Int, completion: @escaping (CurrentWeather?) -> Void) {
        
        if let forecastURL = URL(string: "\(forecastBaseURL!)") {
            
            Alamofire.request(forecastURL).responseJSON(completionHandler: { (response) in
                if let jsonDictionary = response.result.value as? [String : Any] {
                    if let currentWeatherDictionary = jsonDictionary["id"] as? [String :Any] {
                        let currentWeather = CurrentWeather(weatherDictionary:currentWeatherDictionary)
                        completion(currentWeather)
                        print(response)
                    } else {
                        completion(nil)
                    }
                }
            })
        }
    }

}
