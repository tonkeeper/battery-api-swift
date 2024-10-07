//
// AndroidBatteryPurchaseStatus.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AndroidBatteryPurchaseStatus: Codable, JSONEncodable, Hashable {

    public var purchases: [AndroidBatteryPurchaseStatusPurchasesInner]

    public init(purchases: [AndroidBatteryPurchaseStatusPurchasesInner]) {
        self.purchases = purchases
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case purchases
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(purchases, forKey: .purchases)
    }
}

