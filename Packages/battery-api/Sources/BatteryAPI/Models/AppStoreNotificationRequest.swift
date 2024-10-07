//
// AppStoreNotificationRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppStoreNotificationRequest: Codable, JSONEncodable, Hashable {

    public var signedPayload: String

    public init(signedPayload: String) {
        self.signedPayload = signedPayload
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case signedPayload
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(signedPayload, forKey: .signedPayload)
    }
}

