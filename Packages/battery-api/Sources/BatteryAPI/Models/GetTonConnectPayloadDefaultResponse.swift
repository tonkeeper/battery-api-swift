//
// GetTonConnectPayloadDefaultResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetTonConnectPayloadDefaultResponse: Codable, JSONEncodable, Hashable {

    public var error: String
    public var errorKey: String?
    public var errorDetails: String?

    public init(error: String, errorKey: String? = nil, errorDetails: String? = nil) {
        self.error = error
        self.errorKey = errorKey
        self.errorDetails = errorDetails
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case error
        case errorKey = "error-key"
        case errorDetails = "error-details"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(error, forKey: .error)
        try container.encodeIfPresent(errorKey, forKey: .errorKey)
        try container.encodeIfPresent(errorDetails, forKey: .errorDetails)
    }
}

