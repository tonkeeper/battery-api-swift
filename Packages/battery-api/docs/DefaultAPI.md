# DefaultAPI

All URIs are relative to *https://battery.tonkeeper.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**androidBatteryPurchase**](DefaultAPI.md#androidbatterypurchase) | **POST** /purchase-battery/android | 
[**appStoreNotification**](DefaultAPI.md#appstorenotification) | **POST** /purchase-battery/ios/app-store-notification | 
[**createCustomRefund**](DefaultAPI.md#createcustomrefund) | **POST** /restricted/create-custom-refund | 
[**estimateGaslessCost**](DefaultAPI.md#estimategaslesscost) | **POST** /gasless/estimate-cost/{jetton_master} | 
[**extendRefundPeriod**](DefaultAPI.md#extendrefundperiod) | **POST** /restricted/purchases/{purchase_id}/extend-refund-period | 
[**getBalance**](DefaultAPI.md#getbalance) | **GET** /balance | 
[**getConfig**](DefaultAPI.md#getconfig) | **GET** /config | 
[**getPurchases**](DefaultAPI.md#getpurchases) | **GET** /purchases | 
[**getRechargeMethods**](DefaultAPI.md#getrechargemethods) | **GET** /recharge-methods | 
[**getStatus**](DefaultAPI.md#getstatus) | **GET** /status | 
[**getTransactions**](DefaultAPI.md#gettransactions) | **GET** /transactions | 
[**iosBatteryPurchase**](DefaultAPI.md#iosbatterypurchase) | **POST** /purchase-battery/ios | 
[**promoCodeBatteryPurchase**](DefaultAPI.md#promocodebatterypurchase) | **POST** /purchase-battery/promo-code | 
[**requestRefund**](DefaultAPI.md#requestrefund) | **POST** /request-refund | 
[**resetUserBalance**](DefaultAPI.md#resetuserbalance) | **POST** /restricted/users/{user_id}/reset-balance | 
[**sendMessage**](DefaultAPI.md#sendmessage) | **POST** /message | 
[**verifyPurchasePromo**](DefaultAPI.md#verifypurchasepromo) | **GET** /purchase-battery/verify-purchase-promo | 


# **androidBatteryPurchase**
```swift
    open class func androidBatteryPurchase(xTonConnectAuth: String, androidBatteryPurchaseRequest: AndroidBatteryPurchaseRequest, completion: @escaping (_ data: AndroidBatteryPurchaseStatus?, _ error: Error?) -> Void)
```



verify an in-app purchase

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let xTonConnectAuth = "xTonConnectAuth_example" // String | 
let androidBatteryPurchaseRequest = androidBatteryPurchase_request(purchases: [androidBatteryPurchase_request_purchases_inner(token: "token_example", productId: "productId_example", promo: "promo_example")]) // AndroidBatteryPurchaseRequest | In-App purchase

DefaultAPI.androidBatteryPurchase(xTonConnectAuth: xTonConnectAuth, androidBatteryPurchaseRequest: androidBatteryPurchaseRequest) { (response, error) in
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
 **androidBatteryPurchaseRequest** | [**AndroidBatteryPurchaseRequest**](AndroidBatteryPurchaseRequest.md) | In-App purchase | 

### Return type

[**AndroidBatteryPurchaseStatus**](AndroidBatteryPurchaseStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appStoreNotification**
```swift
    open class func appStoreNotification(appStoreNotificationRequest: AppStoreNotificationRequest, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let appStoreNotificationRequest = appStoreNotification_request(signedPayload: "signedPayload_example") // AppStoreNotificationRequest | 

DefaultAPI.appStoreNotification(appStoreNotificationRequest: appStoreNotificationRequest) { (response, error) in
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
 **appStoreNotificationRequest** | [**AppStoreNotificationRequest**](AppStoreNotificationRequest.md) |  | 

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCustomRefund**
```swift
    open class func createCustomRefund(token: String, createCustomRefundRequest: CreateCustomRefundRequest, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let token = "token_example" // String | 
let createCustomRefundRequest = createCustomRefund_request(relayerEventId: 123, amount: "amount_example", currency: "currency_example", comment: "comment_example", reason: "reason_example", destination: "destination_example") // CreateCustomRefundRequest | 

DefaultAPI.createCustomRefund(token: token, createCustomRefundRequest: createCustomRefundRequest) { (response, error) in
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
 **token** | **String** |  | 
 **createCustomRefundRequest** | [**CreateCustomRefundRequest**](CreateCustomRefundRequest.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **estimateGaslessCost**
```swift
    open class func estimateGaslessCost(jettonMaster: String, estimateGaslessCostRequest: EstimateGaslessCostRequest, xTonConnectAuth: String? = nil, walletAddress: String? = nil, walletPublicKey: String? = nil, completion: @escaping (_ data: GaslessEstimation?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let jettonMaster = "jettonMaster_example" // String | 
let estimateGaslessCostRequest = estimateGaslessCost_request(battery: false, payload: "payload_example") // EstimateGaslessCostRequest | 
let xTonConnectAuth = "xTonConnectAuth_example" // String |  (optional)
let walletAddress = "walletAddress_example" // String |  (optional)
let walletPublicKey = "walletPublicKey_example" // String |  (optional)

DefaultAPI.estimateGaslessCost(jettonMaster: jettonMaster, estimateGaslessCostRequest: estimateGaslessCostRequest, xTonConnectAuth: xTonConnectAuth, walletAddress: walletAddress, walletPublicKey: walletPublicKey) { (response, error) in
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
 **jettonMaster** | **String** |  | 
 **estimateGaslessCostRequest** | [**EstimateGaslessCostRequest**](EstimateGaslessCostRequest.md) |  | 
 **xTonConnectAuth** | **String** |  | [optional] 
 **walletAddress** | **String** |  | [optional] 
 **walletPublicKey** | **String** |  | [optional] 

### Return type

[**GaslessEstimation**](GaslessEstimation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extendRefundPeriod**
```swift
    open class func extendRefundPeriod(token: String, purchaseId: Int64, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let token = "token_example" // String | 
let purchaseId = 987 // Int64 | 

DefaultAPI.extendRefundPeriod(token: token, purchaseId: purchaseId) { (response, error) in
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
 **token** | **String** |  | 
 **purchaseId** | **Int64** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBalance**
```swift
    open class func getBalance(xTonConnectAuth: String, units: Units_getBalance? = nil, completion: @escaping (_ data: Balance?, _ error: Error?) -> Void)
```



This method returns information about a user's balance.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let xTonConnectAuth = "xTonConnectAuth_example" // String | 
let units = "units_example" // String |  (optional) (default to .usd)

DefaultAPI.getBalance(xTonConnectAuth: xTonConnectAuth, units: units) { (response, error) in
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
 **units** | **String** |  | [optional] [default to .usd]

### Return type

[**Balance**](Balance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConfig**
```swift
    open class func getConfig(completion: @escaping (_ data: Config?, _ error: Error?) -> Void)
```



This method returns information about Battery Service.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI


DefaultAPI.getConfig() { (response, error) in
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

[**Config**](Config.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPurchases**
```swift
    open class func getPurchases(xTonConnectAuth: String, limit: Int? = nil, offset: Int? = nil, includeGiftsOnTheWay: Bool? = nil, completion: @escaping (_ data: Purchases?, _ error: Error?) -> Void)
```



This method returns a list of purchases made by a specific user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let xTonConnectAuth = "xTonConnectAuth_example" // String | 
let limit = 987 // Int |  (optional) (default to 1000)
let offset = 987 // Int |  (optional) (default to 0)
let includeGiftsOnTheWay = true // Bool |  (optional) (default to false)

DefaultAPI.getPurchases(xTonConnectAuth: xTonConnectAuth, limit: limit, offset: offset, includeGiftsOnTheWay: includeGiftsOnTheWay) { (response, error) in
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
 **limit** | **Int** |  | [optional] [default to 1000]
 **offset** | **Int** |  | [optional] [default to 0]
 **includeGiftsOnTheWay** | **Bool** |  | [optional] [default to false]

### Return type

[**Purchases**](Purchases.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRechargeMethods**
```swift
    open class func getRechargeMethods(includeRechargeOnly: Bool? = nil, completion: @escaping (_ data: RechargeMethods?, _ error: Error?) -> Void)
```



This method returns on-chain recharge methods.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let includeRechargeOnly = true // Bool |  (optional) (default to true)

DefaultAPI.getRechargeMethods(includeRechargeOnly: includeRechargeOnly) { (response, error) in
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
 **includeRechargeOnly** | **Bool** |  | [optional] [default to true]

### Return type

[**RechargeMethods**](RechargeMethods.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStatus**
```swift
    open class func getStatus(xTonConnectAuth: String, completion: @escaping (_ data: Status?, _ error: Error?) -> Void)
```



This method returns information about the current status of Battery Service.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let xTonConnectAuth = "xTonConnectAuth_example" // String | 

DefaultAPI.getStatus(xTonConnectAuth: xTonConnectAuth) { (response, error) in
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

### Return type

[**Status**](Status.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransactions**
```swift
    open class func getTransactions(xTonConnectAuth: String, limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: Transactions?, _ error: Error?) -> Void)
```



This method returns a list of transactions made by a specific user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let xTonConnectAuth = "xTonConnectAuth_example" // String | 
let limit = 987 // Int |  (optional) (default to 1000)
let offset = 987 // Int |  (optional) (default to 0)

DefaultAPI.getTransactions(xTonConnectAuth: xTonConnectAuth, limit: limit, offset: offset) { (response, error) in
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
 **limit** | **Int** |  | [optional] [default to 1000]
 **offset** | **Int** |  | [optional] [default to 0]

### Return type

[**Transactions**](Transactions.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **iosBatteryPurchase**
```swift
    open class func iosBatteryPurchase(xTonConnectAuth: String, iosBatteryPurchaseRequest: IosBatteryPurchaseRequest, completion: @escaping (_ data: IOSBatteryPurchaseStatus?, _ error: Error?) -> Void)
```



verify an in-app purchase

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let xTonConnectAuth = "xTonConnectAuth_example" // String | 
let iosBatteryPurchaseRequest = iosBatteryPurchase_request(transactions: [iosBatteryPurchase_request_transactions_inner(id: "id_example", promo: "promo_example")]) // IosBatteryPurchaseRequest | In-App purchase

DefaultAPI.iosBatteryPurchase(xTonConnectAuth: xTonConnectAuth, iosBatteryPurchaseRequest: iosBatteryPurchaseRequest) { (response, error) in
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
 **iosBatteryPurchaseRequest** | [**IosBatteryPurchaseRequest**](IosBatteryPurchaseRequest.md) | In-App purchase | 

### Return type

[**IOSBatteryPurchaseStatus**](IOSBatteryPurchaseStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **promoCodeBatteryPurchase**
```swift
    open class func promoCodeBatteryPurchase(xTonConnectAuth: String, promoCodeBatteryPurchaseRequest: PromoCodeBatteryPurchaseRequest, acceptLanguage: String? = nil, completion: @escaping (_ data: PromoCodeBatteryPurchaseStatus?, _ error: Error?) -> Void)
```



charge battery with promo code

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let xTonConnectAuth = "xTonConnectAuth_example" // String | 
let promoCodeBatteryPurchaseRequest = promoCodeBatteryPurchase_request(promoCode: "promoCode_example") // PromoCodeBatteryPurchaseRequest | charge battery with promo code
let acceptLanguage = "acceptLanguage_example" // String |  (optional) (default to "en")

DefaultAPI.promoCodeBatteryPurchase(xTonConnectAuth: xTonConnectAuth, promoCodeBatteryPurchaseRequest: promoCodeBatteryPurchaseRequest, acceptLanguage: acceptLanguage) { (response, error) in
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
 **promoCodeBatteryPurchaseRequest** | [**PromoCodeBatteryPurchaseRequest**](PromoCodeBatteryPurchaseRequest.md) | charge battery with promo code | 
 **acceptLanguage** | **String** |  | [optional] [default to &quot;en&quot;]

### Return type

[**PromoCodeBatteryPurchaseStatus**](PromoCodeBatteryPurchaseStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestRefund**
```swift
    open class func requestRefund(xTonConnectAuth: String, requestRefundRequest: RequestRefundRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let xTonConnectAuth = "xTonConnectAuth_example" // String | 
let requestRefundRequest = requestRefund_request(userPurchaseId: 123, purchaseId: 123) // RequestRefundRequest | 

DefaultAPI.requestRefund(xTonConnectAuth: xTonConnectAuth, requestRefundRequest: requestRefundRequest) { (response, error) in
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
 **requestRefundRequest** | [**RequestRefundRequest**](RequestRefundRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetUserBalance**
```swift
    open class func resetUserBalance(token: String, userId: Int64, resetUserBalanceRequest: ResetUserBalanceRequest, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let token = "token_example" // String | 
let userId = 987 // Int64 | 
let resetUserBalanceRequest = resetUserBalance_request(reason: "reason_example") // ResetUserBalanceRequest | 

DefaultAPI.resetUserBalance(token: token, userId: userId, resetUserBalanceRequest: resetUserBalanceRequest) { (response, error) in
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
 **token** | **String** |  | 
 **userId** | **Int64** |  | 
 **resetUserBalanceRequest** | [**ResetUserBalanceRequest**](ResetUserBalanceRequest.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendMessage**
```swift
    open class func sendMessage(xTonConnectAuth: String, emulateMessageToWalletRequest: EmulateMessageToWalletRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Send message to blockchain

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let xTonConnectAuth = "xTonConnectAuth_example" // String | 
let emulateMessageToWalletRequest = emulateMessageToWallet_request(boc: "boc_example") // EmulateMessageToWalletRequest | bag-of-cells serialized to base64

DefaultAPI.sendMessage(xTonConnectAuth: xTonConnectAuth, emulateMessageToWalletRequest: emulateMessageToWalletRequest) { (response, error) in
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

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyPurchasePromo**
```swift
    open class func verifyPurchasePromo(promo: String? = nil, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let promo = "promo_example" // String |  (optional)

DefaultAPI.verifyPurchasePromo(promo: promo) { (response, error) in
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
 **promo** | **String** |  | [optional] 

### Return type

**[String: AnyCodable]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

