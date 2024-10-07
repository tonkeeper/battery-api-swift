//
// RequestRefundRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct RequestRefundRequest: Codable, JSONEncodable, Hashable {

    @available(*, deprecated, message: "This property is deprecated.")
    public var userPurchaseId: Int?
    public var purchaseId: Int?

    public init(userPurchaseId: Int? = nil, purchaseId: Int? = nil) {
        self.userPurchaseId = userPurchaseId
        self.purchaseId = purchaseId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case userPurchaseId = "user_purchase_id"
        case purchaseId = "purchase_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(userPurchaseId, forKey: .userPurchaseId)
        try container.encodeIfPresent(purchaseId, forKey: .purchaseId)
    }
}
