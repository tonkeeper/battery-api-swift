# Config

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**chargeCost** | **String** | cost of 1 charge in TON | 
**fundReceiver** | **String** | with zero balance it is possible to transfer some jettons (stablecoins, jusdt, etc) to this address to refill the balance. Such transfers would be paid by Battery Service. | 
**excessAccount** | **String** | when building a message to transfer an NFT or Jetton, use this address to send excess funds back to Battery Service. | 
**messageTtl** | **Int** | ttl for message in seconds | 
**gasProxy** | [ConfigGasProxyInner] |  | 
**meanPrices** | [**ConfigMeanPrices**](ConfigMeanPrices.md) |  | 
**batteryReservedAmount** | **String** | reserved amount in TON that is kept for gas fees | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


