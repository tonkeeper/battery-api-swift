# EmulationAPI

All URIs are relative to *https://battery.tonkeeper.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**emulateMessageToWallet**](EmulationAPI.md#emulatemessagetowallet) | **POST** /wallet/emulate | 
[**getJettonMetadata**](EmulationAPI.md#getjettonmetadata) | **GET** /jetton-metadata/{name}.json | 


# **emulateMessageToWallet**
```swift
    open class func emulateMessageToWallet(xTonConnectAuth: String, emulateMessageToWalletRequest: EmulateMessageToWalletRequest, acceptLanguage: String? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



Emulate sending message to blockchain

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let xTonConnectAuth = "xTonConnectAuth_example" // String | 
let emulateMessageToWalletRequest = emulateMessageToWallet_request(boc: "boc_example") // EmulateMessageToWalletRequest | bag-of-cells serialized to base64
let acceptLanguage = "acceptLanguage_example" // String |  (optional) (default to "en")

EmulationAPI.emulateMessageToWallet(xTonConnectAuth: xTonConnectAuth, emulateMessageToWalletRequest: emulateMessageToWalletRequest, acceptLanguage: acceptLanguage) { (response, error) in
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
 **xTonConnectAuth** | **String** |  | 
 **emulateMessageToWalletRequest** | [**EmulateMessageToWalletRequest**](EmulateMessageToWalletRequest.md) | bag-of-cells serialized to base64 | 
 **acceptLanguage** | **String** |  | [optional] [default to &quot;en&quot;]

### Return type

**[String: AnyCodable]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJettonMetadata**
```swift
    open class func getJettonMetadata(name: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let name = "name_example" // String | 

EmulationAPI.getJettonMetadata(name: name) { (response, error) in
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
 **name** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

