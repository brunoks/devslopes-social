//
//  ViewController.swift
//  MostraUCL3
//
//  Created by Bruno Vieira on 29/09/17.
//  Copyright © 2017 Bruno Vieira. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        chamaJSON("https://uclgo-test.agora.vix.br/uclgo/api/tarefas/2/?format=json")

    }
    func chamaJSON(url: String, completion: @escaping(CurrentKeys) -> Void ) {
        Alamofire.request(url).responseJSON { (response) -> Void in
            if let value = response.result.value {
                
                let json = JSON(value)
                
                print(json["detail"].stringValue)
                print(" das")
                print(json["detail"].arrayValue)
            }
        }
    }
}
