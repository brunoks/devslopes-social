//
//  CurrentWeatherViewController.swift
//  MostraUCL
//
//  Created by Bruno Vieira on 28/09/17.
//  Copyright © 2017 Bruno Vieira. All rights reserved.
//

import UIKit

class CurrentWeatherViewController: UIViewController {

    @IBOutlet weak var cityTextLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!    
    @IBOutlet weak var temperatureScaleLabel: UILabel!
    
    let forecastAPIKey = "?format=json"
    let coordinate: (lat: Double, long: Double) = (37.8267,-122.4233)
    var forecastService: ForecastService!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        forecastService = ForecastService(APIKey: forecastAPIKey)
        forecastService.getCurrentWeather(id: 2) { (currentWeather) in
            if let currentWeather = currentWeather {
                DispatchQueue.main.async {
                    if let humidity = currentWeather.humidity {
                        self.temperatureLabel.text = "\(humidity)°"
                        print(humidity)
                    } else {
                        self.temperatureLabel.text = "- -"
                    }
                }
            }
        }
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
