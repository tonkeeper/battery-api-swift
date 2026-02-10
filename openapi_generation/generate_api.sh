#!/bin/bash
openapi-generator generate -i ./openapi_generation/batteryapi.yml -g swift5 -o ./Packages/battery-api \
--additional-properties=\
projectName=BatteryAPI,\
swiftUseApiNamespace=false,\
enumUnknownDefaultCase=true,\
responseAs=AsyncAwait,\
useSPMFileStructure=true,\
validatable=false
