/* 
Copyright (c) 2018 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Orders : Codable {
	let id : Int?
	let email : String?
	let closed_at : String?
	let created_at : String?
	let updated_at : String?
	let number : Int?
	let note : String?
	let token : String?
	let gateway : String?
	let test : Bool?
	let total_price : Double?
	let subtotal_price : Double?
	let total_weight : Int?
	let total_tax : Double?
	let taxes_included : Bool?
	let currency : String?
	let financial_status : String?
	let confirmed : Bool?
	let total_discounts : Double?
	let total_line_items_price : Double?
	let cart_token : String?
	let buyer_accepts_marketing : Bool?
	let name : String?
	let referring_site : String?
	let landing_site : String?
	let cancelled_at : String?
	let cancel_reason : String?
	let total_price_usd : Double?
	let checkout_token : String?
	let reference : String?
	let user_id : Int?
	let location_id : String?
	let source_identifier : String?
	let source_url : String?
	let processed_at : String?
	let device_id : String?
	let phone : String?
	let customer_locale : String?
	let app_id : Int?
	let browser_ip : String?
	let landing_site_ref : String?
	let order_number : Int?
	let discount_codes : [String]?
	let note_attributes : [String]?
	let payment_gateway_names : [String]?
	let processing_method : String?
	let checkout_id : String?
	let source_name : String?
	let fulfillment_status : String?
	let tax_lines : [String]?
	let tags : String?
	let contact_email : String?
	let order_status_url : String?
	let admin_graphql_api_id : String?
	let line_items : [Line_items]?
	let shipping_lines : [String]?
	let billing_address : Billing_address?
	let shipping_address : Shipping_address?
	let fulfillments : [String]?
	let refunds : [String]?
	let customer : Customer?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case email = "email"
		case closed_at = "closed_at"
		case created_at = "created_at"
		case updated_at = "updated_at"
		case number = "number"
		case note = "note"
		case token = "token"
		case gateway = "gateway"
		case test = "test"
		case total_price = "total_price"
		case subtotal_price = "subtotal_price"
		case total_weight = "total_weight"
		case total_tax = "total_tax"
		case taxes_included = "taxes_included"
		case currency = "currency"
		case financial_status = "financial_status"
		case confirmed = "confirmed"
		case total_discounts = "total_discounts"
		case total_line_items_price = "total_line_items_price"
		case cart_token = "cart_token"
		case buyer_accepts_marketing = "buyer_accepts_marketing"
		case name = "name"
		case referring_site = "referring_site"
		case landing_site = "landing_site"
		case cancelled_at = "cancelled_at"
		case cancel_reason = "cancel_reason"
		case total_price_usd = "total_price_usd"
		case checkout_token = "checkout_token"
		case reference = "reference"
		case user_id = "user_id"
		case location_id = "location_id"
		case source_identifier = "source_identifier"
		case source_url = "source_url"
		case processed_at = "processed_at"
		case device_id = "device_id"
		case phone = "phone"
		case customer_locale = "customer_locale"
		case app_id = "app_id"
		case browser_ip = "browser_ip"
		case landing_site_ref = "landing_site_ref"
		case order_number = "order_number"
		case discount_codes = "discount_codes"
		case note_attributes = "note_attributes"
		case payment_gateway_names = "payment_gateway_names"
		case processing_method = "processing_method"
		case checkout_id = "checkout_id"
		case source_name = "source_name"
		case fulfillment_status = "fulfillment_status"
		case tax_lines = "tax_lines"
		case tags = "tags"
		case contact_email = "contact_email"
		case order_status_url = "order_status_url"
		case admin_graphql_api_id = "admin_graphql_api_id"
		case line_items = "line_items"
		case shipping_lines = "shipping_lines"
		case billing_address
		case shipping_address
		case fulfillments = "fulfillments"
		case refunds = "refunds"
		case customer
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		email = try values.decodeIfPresent(String.self, forKey: .email)
		closed_at = try values.decodeIfPresent(String.self, forKey: .closed_at)
		created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
		updated_at = try values.decodeIfPresent(String.self, forKey: .updated_at)
		number = try values.decodeIfPresent(Int.self, forKey: .number)
		note = try values.decodeIfPresent(String.self, forKey: .note)
		token = try values.decodeIfPresent(String.self, forKey: .token)
		gateway = try values.decodeIfPresent(String.self, forKey: .gateway)
		test = try values.decodeIfPresent(Bool.self, forKey: .test)
		total_price = try values.decodeIfPresent(Double.self, forKey: .total_price)
		subtotal_price = try values.decodeIfPresent(Double.self, forKey: .subtotal_price)
		total_weight = try values.decodeIfPresent(Int.self, forKey: .total_weight)
		total_tax = try values.decodeIfPresent(Double.self, forKey: .total_tax)
		taxes_included = try values.decodeIfPresent(Bool.self, forKey: .taxes_included)
		currency = try values.decodeIfPresent(String.self, forKey: .currency)
		financial_status = try values.decodeIfPresent(String.self, forKey: .financial_status)
		confirmed = try values.decodeIfPresent(Bool.self, forKey: .confirmed)
		total_discounts = try values.decodeIfPresent(Double.self, forKey: .total_discounts)
		total_line_items_price = try values.decodeIfPresent(Double.self, forKey: .total_line_items_price)
		cart_token = try values.decodeIfPresent(String.self, forKey: .cart_token)
		buyer_accepts_marketing = try values.decodeIfPresent(Bool.self, forKey: .buyer_accepts_marketing)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		referring_site = try values.decodeIfPresent(String.self, forKey: .referring_site)
		landing_site = try values.decodeIfPresent(String.self, forKey: .landing_site)
		cancelled_at = try values.decodeIfPresent(String.self, forKey: .cancelled_at)
		cancel_reason = try values.decodeIfPresent(String.self, forKey: .cancel_reason)
		total_price_usd = try values.decodeIfPresent(Double.self, forKey: .total_price_usd)
		checkout_token = try values.decodeIfPresent(String.self, forKey: .checkout_token)
		reference = try values.decodeIfPresent(String.self, forKey: .reference)
		user_id = try values.decodeIfPresent(Int.self, forKey: .user_id)
		location_id = try values.decodeIfPresent(String.self, forKey: .location_id)
		source_identifier = try values.decodeIfPresent(String.self, forKey: .source_identifier)
		source_url = try values.decodeIfPresent(String.self, forKey: .source_url)
		processed_at = try values.decodeIfPresent(String.self, forKey: .processed_at)
		device_id = try values.decodeIfPresent(String.self, forKey: .device_id)
		phone = try values.decodeIfPresent(String.self, forKey: .phone)
		customer_locale = try values.decodeIfPresent(String.self, forKey: .customer_locale)
		app_id = try values.decodeIfPresent(Int.self, forKey: .app_id)
		browser_ip = try values.decodeIfPresent(String.self, forKey: .browser_ip)
		landing_site_ref = try values.decodeIfPresent(String.self, forKey: .landing_site_ref)
		order_number = try values.decodeIfPresent(Int.self, forKey: .order_number)
		discount_codes = try values.decodeIfPresent([String].self, forKey: .discount_codes)
		note_attributes = try values.decodeIfPresent([String].self, forKey: .note_attributes)
		payment_gateway_names = try values.decodeIfPresent([String].self, forKey: .payment_gateway_names)
		processing_method = try values.decodeIfPresent(String.self, forKey: .processing_method)
		checkout_id = try values.decodeIfPresent(String.self, forKey: .checkout_id)
		source_name = try values.decodeIfPresent(String.self, forKey: .source_name)
		fulfillment_status = try values.decodeIfPresent(String.self, forKey: .fulfillment_status)
		tax_lines = try values.decodeIfPresent([String].self, forKey: .tax_lines)
		tags = try values.decodeIfPresent(String.self, forKey: .tags)
		contact_email = try values.decodeIfPresent(String.self, forKey: .contact_email)
		order_status_url = try values.decodeIfPresent(String.self, forKey: .order_status_url)
		admin_graphql_api_id = try values.decodeIfPresent(String.self, forKey: .admin_graphql_api_id)
		line_items = try values.decodeIfPresent([Line_items].self, forKey: .line_items)
		shipping_lines = try values.decodeIfPresent([String].self, forKey: .shipping_lines)
		billing_address = try Billing_address(from: decoder)
		shipping_address = try Shipping_address(from: decoder)
		fulfillments = try values.decodeIfPresent([String].self, forKey: .fulfillments)
		refunds = try values.decodeIfPresent([String].self, forKey: .refunds)
		customer = try Customer(from: decoder)
	}

}