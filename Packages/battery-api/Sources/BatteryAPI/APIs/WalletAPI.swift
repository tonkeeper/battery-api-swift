//
// WalletAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class WalletAPI {

    /**

     - parameter tonConnectProofRequest: (body) Data that is expected from TON Connect 
     - returns: TonConnectProof200Response
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func tonConnectProof(tonConnectProofRequest: TonConnectProofRequest) async throws -> TonConnectProof200Response {
        return try await tonConnectProofWithRequestBuilder(tonConnectProofRequest: tonConnectProofRequest).execute().body
    }

    /**
     - POST /tonconnect/proof
     - Account verification and token issuance
     - parameter tonConnectProofRequest: (body) Data that is expected from TON Connect 
     - returns: RequestBuilder<TonConnectProof200Response> 
     */
    open class func tonConnectProofWithRequestBuilder(tonConnectProofRequest: TonConnectProofRequest) -> RequestBuilder<TonConnectProof200Response> {
        let localVariablePath = "/tonconnect/proof"
        let localVariableURLString = BatteryAPIAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: tonConnectProofRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<TonConnectProof200Response>.Type = BatteryAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}