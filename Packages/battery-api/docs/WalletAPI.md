# WalletAPI

All URIs are relative to *https://battery.tonkeeper.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tonConnectProof**](WalletAPI.md#tonconnectproof) | **POST** /tonconnect/proof | 


# **tonConnectProof**
```swift
    open class func tonConnectProof(tonConnectProofRequest: TonConnectProofRequest, completion: @escaping (_ data: TonConnectProof200Response?, _ error: Error?) -> Void)
```



Account verification and token issuance

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let tonConnectProofRequest = tonConnectProof_request(address: "address_example", proof: tonConnectProof_request_proof(timestamp: 123, domain: tonConnectProof_request_proof_domain(lengthBytes: 123, value: "value_example"), signature: "signature_example", payload: "payload_example", stateInit: "stateInit_example")) // TonConnectProofRequest | Data that is expected from TON Connect

WalletAPI.tonConnectProof(tonConnectProofRequest: tonConnectProofRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tonConnectProofRequest** | [**TonConnectProofRequest**](TonConnectProofRequest.md) | Data that is expected from TON Connect | 

### Return type

[**TonConnectProof200Response**](TonConnectProof200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

