#!/bin/sh

RELEASE_VERSION=${RELEASE_VERSION:-v0.23.2}
RELEASE_URL="https://github.com/go-vela/server/releases/download/${RELEASE_VERSION}/api-spec.json"

# fetch swagger api spec
echo "downloading api-spec.json from Vela release ${RELEASE_URL}"

wget -O api-spec.json ${RELEASE_URL}

# generate elm
echo "generating elm code using swagger-codegen"

swagger-codegen generate -i api-spec.json -l elm

# cleanup
echo "removing api-spec.json"

rm -rf api-spec.json
