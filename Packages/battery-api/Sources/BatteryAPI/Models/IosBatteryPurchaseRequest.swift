//
// IosBatteryPurchaseRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct IosBatteryPurchaseRequest: Codable, JSONEncodable, Hashable {

    public var transactions: [IosBatteryPurchaseRequestTransactionsInner]

    public init(transactions: [IosBatteryPurchaseRequestTransactionsInner]) {
        self.transactions = transactions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case transactions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(transactions, forKey: .transactions)
    }
}
