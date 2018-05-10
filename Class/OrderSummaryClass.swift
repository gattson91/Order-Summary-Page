//
//  OrderSummaryClass.swift
//  ShopifyOrderSummaryPage
//
//  Created by Gabrielle Anderson on 2018-05-09.
//  Copyright © 2018 Gabrielle Anderson. All rights reserved.
//

import Foundation
import UIKit

class OrderSummary{
    
//trying to connect JSON to Swift
    var request = URLRequest(url: URL(string: "https://shopicruit.myshopify.com/admin/orders.json?page=1&access_token=c32313df0d0ef512ca64d5b336a0d7c6")!)
    
    request.httpMethod = "GET"

    URLSession.shared.dataTask(with: request, completionHandler: { data, response, error -> Void in
        do {
            let jsonDecoder = JSONDecoder()
            let responseModel = try jsonDecoder.decode(CustomDtoClass.self, from:   data!)
            print(responseModel)
        } catch {
            print("JSON Serialization error")
        }
    }).resume()

}
