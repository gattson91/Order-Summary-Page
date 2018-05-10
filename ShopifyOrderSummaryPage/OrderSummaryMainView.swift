//
//  ViewController.swift
//  ShopifyOrderSummaryPage
//
//  Created by Gabrielle Anderson on 2018-05-09.
//  Copyright © 2018 Gabrielle Anderson. All rights reserved.
//

import UIKit
import Foundation

class OrderSummaryMainView: UIViewController {
    var provinceCount : [String : Int] = [:]
    var yearCount : [Date : Int] = [:]
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //Loading data here as we only need to do it if the view will actuall appear
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let url = URL(string: "https://shopicruit.myshopify.com/admin/orders.json?page=1&access_token=c32313df0d0ef512ca64d5b336a0d7c6")
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            do { //way to call anything on the web
                
                let jsonDecoder = JSONDecoder()
                let responseModel = try jsonDecoder.decode(Json4Swift_Base.self, from: data!)
                //runs the json to code, puts shopify info into an object
                for order in responseModel.orders! {
                    print(order.created_at)
                    
                    /*print (order.device_id ?? "No device_id")
                    print (order.total_price ?? "0.00")
                    for lineItem in order.line_items! {
                        print (lineItem.name ?? "No name")
                    }
                    print ("----------")
                    */
                   /* if let checkProvince = self.provinceCount[(order.billing_address?.province)!] {
                        self.provinceCount[(order.billing_address?.province)!] = checkProvince + 1
                    } else {
                        self.provinceCount[(order.billing_address?.province)!] = 1
                    }*/
                }
            
               
                for (province, orderCount) in self.provinceCount {
                    print("Province \(province), has \(orderCount) orders")
                }
                // date formatter from string to NSDate
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
                for testOrder in responseModel.orders! {
                    let date = dateFormatter.date(from: testOrder.created_at!)!
                    let calendar = Calendar.current
                    let year = calendar.component(.year, from: date)
                    print(year)
                    //print(testOrder.created_at)
                }
               /* if let checkYear = self.yearCount[(order.created_at?.year)!]*/
                
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

