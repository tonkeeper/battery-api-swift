# DefaultAPI

All URIs are relative to *https://battery.tonkeeper.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**androidBatteryPurchase**](DefaultAPI.md#androidbatterypurchase) | **POST** /purchase-battery/android | 
[**appStoreNotification**](DefaultAPI.md#appstorenotification) | **POST** /purchase-battery/ios/app-store-notification | 
[**applyPromo**](DefaultAPI.md#applypromo) | **POST** /restricted/apply-promo | 
[**createCustomRefund**](DefaultAPI.md#createcustomrefund) | **POST** /restricted/create-custom-refund | 
[**createPromoCampaign**](DefaultAPI.md#createpromocampaign) | **POST** /restricted/promo-campaign | 
[**enterpriseEstimate**](DefaultAPI.md#enterpriseestimate) | **POST** /enterprise/wallets/{wallet_id}/estimate | 
[**enterpriseGetMessage**](DefaultAPI.md#enterprisegetmessage) | **GET** /enterprise/messages/{msg_id} | 
[**enterpriseGetStatus**](DefaultAPI.md#enterprisegetstatus) | **GET** /enterprise/status | 
[**enterpriseGetWalletConfig**](DefaultAPI.md#enterprisegetwalletconfig) | **GET** /enterprise/wallets/{wallet_id}/config | 
[**enterpriseSend**](DefaultAPI.md#enterprisesend) | **POST** /enterprise/wallets/{wallet_id}/send | 
[**estimateGaslessCost**](DefaultAPI.md#estimategaslesscost) | **POST** /gasless/estimate-cost/{jetton_master} | 
[**extendRefundPeriod**](DefaultAPI.md#extendrefundperiod) | **POST** /restricted/purchases/{purchase_id}/extend-refund-period | 
[**getBalance**](DefaultAPI.md#getbalance) | **GET** /balance | 
[**getBatteryCharged**](DefaultAPI.md#getbatterycharged) | **GET** /battery-charged | 
[**getConfig**](DefaultAPI.md#getconfig) | **GET** /config | 
[**getPromoUsed**](DefaultAPI.md#getpromoused) | **GET** /promo-used | 
[**getPurchases**](DefaultAPI.md#getpurchases) | **GET** /purchases | 
[**getRechargeMethods**](DefaultAPI.md#getrechargemethods) | **GET** /recharge-methods | 
[**getStatus**](DefaultAPI.md#getstatus) | **GET** /status | 
[**getTransactions**](DefaultAPI.md#gettransactions) | **GET** /transactions | 
[**getTronAvailableTransfers**](DefaultAPI.md#gettronavailabletransfers) | **GET** /v0/tron/available-transfers | 
[**getTronConfig**](DefaultAPI.md#gettronconfig) | **GET** /v0/tron/config | 
[**getTronTransactions**](DefaultAPI.md#gettrontransactions) | **GET** /v0/tron/transactions | 
[**increaseUserBalance**](DefaultAPI.md#increaseuserbalance) | **POST** /restricted/users/{user_id}/increase-balance | 
[**iosBatteryPurchase**](DefaultAPI.md#iosbatterypurchase) | **POST** /purchase-battery/ios | 
[**itrxIoCallback**](DefaultAPI.md#itrxiocallback) | **POST** /v0/tron/itrx-io-callback | 
[**manualTransfer**](DefaultAPI.md#manualtransfer) | **POST** /restricted/transfer | 
[**omnistonSwap**](DefaultAPI.md#omnistonswap) | **POST** /restricted/omniston-swap | 
[**promoCodeBatteryPurchase**](DefaultAPI.md#promocodebatterypurchase) | **POST** /purchase-battery/promo-code | 
[**requestRefund**](DefaultAPI.md#requestrefund) | **POST** /request-refund | 
[**resetUserBalance**](DefaultAPI.md#resetuserbalance) | **POST** /restricted/users/{user_id}/reset-balance | 
[**sendMessage**](DefaultAPI.md#sendmessage) | **POST** /message | 
[**tronEstimate**](DefaultAPI.md#tronestimate) | **GET** /v0/tron/estimate | 
[**tronSend**](DefaultAPI.md#tronsend) | **POST** /v0/tron/send | 
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

# **applyPromo**
```swift
    open class func applyPromo(token: String, applyPromoRequest: ApplyPromoRequest, completion: @escaping (_ data: PromoCodeBatteryPurchaseStatus?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let token = "token_example" // String | 
let applyPromoRequest = applyPromo_request(publicKey: "publicKey_example", promoCode: "promoCode_example") // ApplyPromoRequest | 

DefaultAPI.applyPromo(token: token, applyPromoRequest: applyPromoRequest) { (response, error) in
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
 **applyPromoRequest** | [**ApplyPromoRequest**](ApplyPromoRequest.md) |  | 

### Return type

[**PromoCodeBatteryPurchaseStatus**](PromoCodeBatteryPurchaseStatus.md)

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

# **createPromoCampaign**
```swift
    open class func createPromoCampaign(token: String, createPromoCampaignRequest: CreatePromoCampaignRequest, completion: @escaping (_ data: CreatePromoCampaign200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let token = "token_example" // String | 
let createPromoCampaignRequest = createPromoCampaign_request(name: "name_example", participants: [createPromoCampaign_request_participants_inner(address: "address_example", amount: "amount_example")]) // CreatePromoCampaignRequest | 

DefaultAPI.createPromoCampaign(token: token, createPromoCampaignRequest: createPromoCampaignRequest) { (response, error) in
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
 **createPromoCampaignRequest** | [**CreatePromoCampaignRequest**](CreatePromoCampaignRequest.md) |  | 

### Return type

[**CreatePromoCampaign200Response**](CreatePromoCampaign200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseEstimate**
```swift
    open class func enterpriseEstimate(xEnterpriseAuth: String, walletId: String, enterpriseEstimateRequest: EnterpriseEstimateRequest, acceptLanguage: String? = nil, emulate: Bool? = nil, completion: @escaping (_ data: EnterpriseEstimate200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let xEnterpriseAuth = "xEnterpriseAuth_example" // String | 
let walletId = "walletId_example" // String | 
let enterpriseEstimateRequest = enterpriseEstimate_request(boc: "boc_example", walletPublicKey: "walletPublicKey_example") // EnterpriseEstimateRequest | bag-of-cells serialized to base64
let acceptLanguage = "acceptLanguage_example" // String |  (optional) (default to "en")
let emulate = true // Bool |  (optional) (default to false)

DefaultAPI.enterpriseEstimate(xEnterpriseAuth: xEnterpriseAuth, walletId: walletId, enterpriseEstimateRequest: enterpriseEstimateRequest, acceptLanguage: acceptLanguage, emulate: emulate) { (response, error) in
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
 **xEnterpriseAuth** | **String** |  | 
 **walletId** | **String** |  | 
 **enterpriseEstimateRequest** | [**EnterpriseEstimateRequest**](EnterpriseEstimateRequest.md) | bag-of-cells serialized to base64 | 
 **acceptLanguage** | **String** |  | [optional] [default to &quot;en&quot;]
 **emulate** | **Bool** |  | [optional] [default to false]

### Return type

[**EnterpriseEstimate200Response**](EnterpriseEstimate200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseGetMessage**
```swift
    open class func enterpriseGetMessage(xEnterpriseAuth: String, msgId: String, completion: @escaping (_ data: EnterpriseGetMessage200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let xEnterpriseAuth = "xEnterpriseAuth_example" // String | 
let msgId = "msgId_example" // String | 

DefaultAPI.enterpriseGetMessage(xEnterpriseAuth: xEnterpriseAuth, msgId: msgId) { (response, error) in
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
 **xEnterpriseAuth** | **String** |  | 
 **msgId** | **String** |  | 

### Return type

[**EnterpriseGetMessage200Response**](EnterpriseGetMessage200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseGetStatus**
```swift
    open class func enterpriseGetStatus(xEnterpriseAuth: String, completion: @escaping (_ data: EnterpriseGetStatus200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let xEnterpriseAuth = "xEnterpriseAuth_example" // String | 

DefaultAPI.enterpriseGetStatus(xEnterpriseAuth: xEnterpriseAuth) { (response, error) in
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
 **xEnterpriseAuth** | **String** |  | 

### Return type

[**EnterpriseGetStatus200Response**](EnterpriseGetStatus200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseGetWalletConfig**
```swift
    open class func enterpriseGetWalletConfig(xEnterpriseAuth: String, walletId: String, completion: @escaping (_ data: EnterpriseWalletConfig?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let xEnterpriseAuth = "xEnterpriseAuth_example" // String | 
let walletId = "walletId_example" // String | 

DefaultAPI.enterpriseGetWalletConfig(xEnterpriseAuth: xEnterpriseAuth, walletId: walletId) { (response, error) in
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
 **xEnterpriseAuth** | **String** |  | 
 **walletId** | **String** |  | 

### Return type

[**EnterpriseWalletConfig**](EnterpriseWalletConfig.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enterpriseSend**
```swift
    open class func enterpriseSend(xEnterpriseAuth: String, walletId: String, enterpriseEstimateRequest: EnterpriseEstimateRequest, completion: @escaping (_ data: EnterpriseSend200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let xEnterpriseAuth = "xEnterpriseAuth_example" // String | 
let walletId = "walletId_example" // String | 
let enterpriseEstimateRequest = enterpriseEstimate_request(boc: "boc_example", walletPublicKey: "walletPublicKey_example") // EnterpriseEstimateRequest | bag-of-cells serialized to base64

DefaultAPI.enterpriseSend(xEnterpriseAuth: xEnterpriseAuth, walletId: walletId, enterpriseEstimateRequest: enterpriseEstimateRequest) { (response, error) in
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
 **xEnterpriseAuth** | **String** |  | 
 **walletId** | **String** |  | 
 **enterpriseEstimateRequest** | [**EnterpriseEstimateRequest**](EnterpriseEstimateRequest.md) | bag-of-cells serialized to base64 | 

### Return type

[**EnterpriseSend200Response**](EnterpriseSend200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **estimateGaslessCost**
```swift
    open class func estimateGaslessCost(jettonMaster: String, estimateGaslessCostRequest: EstimateGaslessCostRequest, xTonConnectAuth: String? = nil, walletAddress: String? = nil, walletPublicKey: String? = nil, enableValidation: Bool? = nil, completion: @escaping (_ data: GaslessEstimation?, _ error: Error?) -> Void)
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
let enableValidation = true // Bool |  (optional) (default to false)

DefaultAPI.estimateGaslessCost(jettonMaster: jettonMaster, estimateGaslessCostRequest: estimateGaslessCostRequest, xTonConnectAuth: xTonConnectAuth, walletAddress: walletAddress, walletPublicKey: walletPublicKey, enableValidation: enableValidation) { (response, error) in
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
 **enableValidation** | **Bool** |  | [optional] [default to false]

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
    open class func getBalance(xTonConnectAuth: String, units: Units_getBalance? = nil, region: String? = nil, completion: @escaping (_ data: Balance?, _ error: Error?) -> Void)
```



This method returns information about a user's balance.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let xTonConnectAuth = "xTonConnectAuth_example" // String | 
let units = "units_example" // String |  (optional) (default to .usd)
let region = "region_example" // String |  (optional)

DefaultAPI.getBalance(xTonConnectAuth: xTonConnectAuth, units: units, region: region) { (response, error) in
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
 **region** | **String** |  | [optional] 

### Return type

[**Balance**](Balance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBatteryCharged**
```swift
    open class func getBatteryCharged(accountId: String, completion: @escaping (_ data: BatteryCharged?, _ error: Error?) -> Void)
```



This method returns information about a user's balance.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let accountId = "accountId_example" // String | 

DefaultAPI.getBatteryCharged(accountId: accountId) { (response, error) in
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
 **accountId** | **String** |  | 

### Return type

[**BatteryCharged**](BatteryCharged.md)

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

# **getPromoUsed**
```swift
    open class func getPromoUsed(promo: String, completion: @escaping (_ data: PromoUsed?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let promo = "promo_example" // String | 

DefaultAPI.getPromoUsed(promo: promo) { (response, error) in
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
 **promo** | **String** |  | 

### Return type

[**PromoUsed**](PromoUsed.md)

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

# **getTronAvailableTransfers**
```swift
    open class func getTronAvailableTransfers(xProAuth: String, completion: @escaping (_ data: TronAvailableTransfers?, _ error: Error?) -> Void)
```



Get number of available TRON free transfers for Pro users

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let xProAuth = "xProAuth_example" // String | JWT token from Pro service (Bearer token)

DefaultAPI.getTronAvailableTransfers(xProAuth: xProAuth) { (response, error) in
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
 **xProAuth** | **String** | JWT token from Pro service (Bearer token) | 

### Return type

[**TronAvailableTransfers**](TronAvailableTransfers.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTronConfig**
```swift
    open class func getTronConfig(completion: @escaping (_ data: GetTronConfig200Response?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI


DefaultAPI.getTronConfig() { (response, error) in
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

[**GetTronConfig200Response**](GetTronConfig200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTronTransactions**
```swift
    open class func getTronTransactions(xTonConnectAuth: String, limit: Int? = nil, maxTimestamp: Int64? = nil, completion: @escaping (_ data: TronTransactionsList?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let xTonConnectAuth = "xTonConnectAuth_example" // String | 
let limit = 987 // Int |  (optional) (default to 1000)
let maxTimestamp = 987 // Int64 |  (optional)

DefaultAPI.getTronTransactions(xTonConnectAuth: xTonConnectAuth, limit: limit, maxTimestamp: maxTimestamp) { (response, error) in
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
 **maxTimestamp** | **Int64** |  | [optional] 

### Return type

[**TronTransactionsList**](TronTransactionsList.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **increaseUserBalance**
```swift
    open class func increaseUserBalance(token: String, userId: Int64, increaseUserBalanceRequest: IncreaseUserBalanceRequest, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let token = "token_example" // String | 
let userId = 987 // Int64 | 
let increaseUserBalanceRequest = increaseUserBalance_request(amount: "amount_example", reason: "reason_example") // IncreaseUserBalanceRequest | 

DefaultAPI.increaseUserBalance(token: token, userId: userId, increaseUserBalanceRequest: increaseUserBalanceRequest) { (response, error) in
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
 **increaseUserBalanceRequest** | [**IncreaseUserBalanceRequest**](IncreaseUserBalanceRequest.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
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

# **itrxIoCallback**
```swift
    open class func itrxIoCallback(requestBody: [String: AnyCodable], completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



receive callback from itrx.io

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let requestBody = "TODO" // [String: AnyCodable] | 

DefaultAPI.itrxIoCallback(requestBody: requestBody) { (response, error) in
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
 **requestBody** | [**[String: AnyCodable]**](AnyCodable.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **manualTransfer**
```swift
    open class func manualTransfer(token: String, manualTransferRequest: ManualTransferRequest, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let token = "token_example" // String | 
let manualTransferRequest = manualTransfer_request(relayer: "relayer_example", to: "to_example", currency: "currency_example", amount: "amount_example", comment: "comment_example") // ManualTransferRequest | 

DefaultAPI.manualTransfer(token: token, manualTransferRequest: manualTransferRequest) { (response, error) in
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
 **manualTransferRequest** | [**ManualTransferRequest**](ManualTransferRequest.md) |  | 

### Return type

**[String: AnyCodable]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **omnistonSwap**
```swift
    open class func omnistonSwap(token: String, master0: String, master1: String, fromAmount: String, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let token = "token_example" // String | 
let master0 = "master0_example" // String | 
let master1 = "master1_example" // String | 
let fromAmount = "fromAmount_example" // String | 

DefaultAPI.omnistonSwap(token: token, master0: master0, master1: master1, fromAmount: fromAmount) { (response, error) in
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
 **master0** | **String** |  | 
 **master1** | **String** |  | 
 **fromAmount** | **String** |  | 

### Return type

**[String: AnyCodable]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
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

# **tronEstimate**
```swift
    open class func tronEstimate(wallet: String, xTonConnectAuth: String? = nil, xProAuth: String? = nil, energy: Int? = nil, bandwidth: Int? = nil, enableValidation: Bool? = nil, completion: @escaping (_ data: EstimatedTronTx?, _ error: Error?) -> Void)
```



Estimate cost of sending a tx in Tron network

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let wallet = "wallet_example" // String | 
let xTonConnectAuth = "xTonConnectAuth_example" // String |  (optional)
let xProAuth = "xProAuth_example" // String | JWT token from Pro service for free charges verification (optional)
let energy = 987 // Int |  (optional)
let bandwidth = 987 // Int |  (optional)
let enableValidation = true // Bool | Enable balance validation for battery charges (optional) (default to false)

DefaultAPI.tronEstimate(wallet: wallet, xTonConnectAuth: xTonConnectAuth, xProAuth: xProAuth, energy: energy, bandwidth: bandwidth, enableValidation: enableValidation) { (response, error) in
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
 **wallet** | **String** |  | 
 **xTonConnectAuth** | **String** |  | [optional] 
 **xProAuth** | **String** | JWT token from Pro service for free charges verification | [optional] 
 **energy** | **Int** |  | [optional] 
 **bandwidth** | **Int** |  | [optional] 
 **enableValidation** | **Bool** | Enable balance validation for battery charges | [optional] [default to false]

### Return type

[**EstimatedTronTx**](EstimatedTronTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tronSend**
```swift
    open class func tronSend(tronSendRequest: TronSendRequest, xTonConnectAuth: String? = nil, xProAuth: String? = nil, userPublicKey: String? = nil, completion: @escaping (_ data: SentTronTx?, _ error: Error?) -> Void)
```



send TRON tx

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import BatteryAPI

let tronSendRequest = tronSend_request(tx: "tx_example", energy: 123, bandwidth: 123, wallet: "wallet_example", instantFeeTx: "instantFeeTx_example") // TronSendRequest | 
let xTonConnectAuth = "xTonConnectAuth_example" // String |  (optional)
let xProAuth = "xProAuth_example" // String | JWT token from Pro service for free charges verification (optional)
let userPublicKey = "userPublicKey_example" // String | User public key for commission payments (required when instant_fee_tx is provided) (optional)

DefaultAPI.tronSend(tronSendRequest: tronSendRequest, xTonConnectAuth: xTonConnectAuth, xProAuth: xProAuth, userPublicKey: userPublicKey) { (response, error) in
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
 **tronSendRequest** | [**TronSendRequest**](TronSendRequest.md) |  | 
 **xTonConnectAuth** | **String** |  | [optional] 
 **xProAuth** | **String** | JWT token from Pro service for free charges verification | [optional] 
 **userPublicKey** | **String** | User public key for commission payments (required when instant_fee_tx is provided) | [optional] 

### Return type

[**SentTronTx**](SentTronTx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyPurchasePromo**
```swift
    open class func verifyPurchasePromo(promo: String? = nil, completion: @escaping (_ data: VerifyPurchasePromo200Response?, _ error: Error?) -> Void)
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

[**VerifyPurchasePromo200Response**](VerifyPurchasePromo200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

