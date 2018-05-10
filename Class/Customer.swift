/* 
Copyright (c) 2018 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Customer : Codable {
	let id : Int?
	let email : String?
	let accepts_marketing : Bool?
	let created_at : String?
	let updated_at : String?
	let first_name : String?
	let last_name : String?
	let orders_count : Int?
	let state : String?
	let total_spent : Double?
	let last_order_id : Int?
	let note : String?
	let verified_email : Bool?
	let multipass_identifier : String?
	let tax_exempt : Bool?
	let phone : String?
	let tags : String?
	let last_order_name : String?
	let admin_graphql_api_id : String?
	let default_address : Default_address?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case email = "email"
		case accepts_marketing = "accepts_marketing"
		case created_at = "created_at"
		case updated_at = "updated_at"
		case first_name = "first_name"
		case last_name = "last_name"
		case orders_count = "orders_count"
		case state = "state"
		case total_spent = "total_spent"
		case last_order_id = "last_order_id"
		case note = "note"
		case verified_email = "verified_email"
		case multipass_identifier = "multipass_identifier"
		case tax_exempt = "tax_exempt"
		case phone = "phone"
		case tags = "tags"
		case last_order_name = "last_order_name"
		case admin_graphql_api_id = "admin_graphql_api_id"
		case default_address
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		email = try values.decodeIfPresent(String.self, forKey: .email)
		accepts_marketing = try values.decodeIfPresent(Bool.self, forKey: .accepts_marketing)
		created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
		updated_at = try values.decodeIfPresent(String.self, forKey: .updated_at)
		first_name = try values.decodeIfPresent(String.self, forKey: .first_name)
		last_name = try values.decodeIfPresent(String.self, forKey: .last_name)
		orders_count = try values.decodeIfPresent(Int.self, forKey: .orders_count)
		state = try values.decodeIfPresent(String.self, forKey: .state)
		total_spent = try values.decodeIfPresent(Double.self, forKey: .total_spent)
		last_order_id = try values.decodeIfPresent(Int.self, forKey: .last_order_id)
		note = try values.decodeIfPresent(String.self, forKey: .note)
		verified_email = try values.decodeIfPresent(Bool.self, forKey: .verified_email)
		multipass_identifier = try values.decodeIfPresent(String.self, forKey: .multipass_identifier)
		tax_exempt = try values.decodeIfPresent(Bool.self, forKey: .tax_exempt)
		phone = try values.decodeIfPresent(String.self, forKey: .phone)
		tags = try values.decodeIfPresent(String.self, forKey: .tags)
		last_order_name = try values.decodeIfPresent(String.self, forKey: .last_order_name)
		admin_graphql_api_id = try values.decodeIfPresent(String.self, forKey: .admin_graphql_api_id)
		default_address = try Default_address(from: decoder)
	}

}