#!/bin/bash
swift run swift-openapi-generator generate \
    --mode types --mode client \
    --output-directory ./Packages/battery-api/Sources/Generated \
    ./Packages/battery-api/openapi_generation/openapi.yml
