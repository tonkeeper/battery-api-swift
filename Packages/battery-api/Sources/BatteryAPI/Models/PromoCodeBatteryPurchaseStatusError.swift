//
// PromoCodeBatteryPurchaseStatusError.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PromoCodeBatteryPurchaseStatusError: Codable, JSONEncodable, Hashable {

    public enum Code: String, Codable, CaseIterable, CaseIterableDefaultsLast {
        case promoCodeNotFound = "promo-code-not-found"
        case promoExceededAttempts = "promo-exceeded-attempts"
        case temporaryError = "temporary-error"
        case unknownDefaultOpenApi = "unknown_default_open_api"
    }
    public var msg: String
    public var code: Code

    public init(msg: String, code: Code) {
        self.msg = msg
        self.code = code
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case msg
        case code
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(msg, forKey: .msg)
        try container.encode(code, forKey: .code)
    }
}
