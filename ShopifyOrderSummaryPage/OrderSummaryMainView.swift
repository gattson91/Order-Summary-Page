//
//  ViewController.swift
//  ShopifyOrderSummaryPage
//
//  Created by Gabrielle Anderson on 2018-05-09.
//  Copyright © 2018 Gabrielle Anderson. All rights reserved.
//

import UIKit

class OrderSummaryMainView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //Loading data here as we only need to do it if the view will actuall appear
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let url = URL(string: "https://shopicruit.myshopify.com/admin/orders.json?page=1&access_token=c32313df0d0ef512ca64d5b336a0d7c6")
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            do {
                let jsonDecoder = JSONDecoder()
                let responseModel = try jsonDecoder.decode(Json4Swift_Base.self, from: data!)
                for order in responseModel.orders! {
                    print (order.device_id ?? "No device_id")
                    print (order)
                }
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

