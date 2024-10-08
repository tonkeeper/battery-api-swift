//
// AndroidBatteryPurchaseRequestPurchasesInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AndroidBatteryPurchaseRequestPurchasesInner: Codable, JSONEncodable, Hashable {

    public var token: String
    public var productId: String
    public var promo: String?

    public init(token: String, productId: String, promo: String? = nil) {
        self.token = token
        self.productId = productId
        self.promo = promo
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case token
        case productId = "product_id"
        case promo
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(token, forKey: .token)
        try container.encode(productId, forKey: .productId)
        try container.encodeIfPresent(promo, forKey: .promo)
    }
}

