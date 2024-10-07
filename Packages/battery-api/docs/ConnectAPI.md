# ConnectAPI

All URIs are relative to *https://battery.tonkeeper.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getTonConnectPayload**](ConnectAPI.md#gettonconnectpayload) | **GET** /tonconnect/payload | 


# **getTonConnectPayload**
```swift
    open class func getTonConnectPayload(completion: @escaping (_ data: GetTonConnectPayload200Response?, _ error: Error?) -> Void)
```



Get a payload for further token receipt

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI


ConnectAPI.getTonConnectPayload() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**GetTonConnectPayload200Response**](GetTonConnectPayload200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

