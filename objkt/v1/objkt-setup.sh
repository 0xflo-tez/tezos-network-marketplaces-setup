#!/bin/bash
echo "Setting up objkt.com contracts"
echo "Loading configuration"
source .env

if [ -z ${ADMIN_ADDRESS+x} ];
then echo "Missing env var: ADMIN_ADDRESS";
fi

if [ -z ${NFT_OWNER+x} ];
then echo "Missing env var: NFT_OWNER";
fi

if [ -z ${ORIGINATOR_ALIAS+x} ];
then echo "Missing env var: ORIGINATOR_ALIAS";
fi

if [ -z ${NETWORK+x} ];
then echo "Missing env var: NETWORK";
fi

if [ -z ${MAINNET_NODE+x} ];
then echo "Missing env var: MAINNET_NODE";
fi

if [ -z ${TARGET_NODE+x} ];
then echo "Missing env var: TARGET_NODE";
fi

mkdir -p data
# echo "Downloading contract codes..."

# echo "- Downloading OBJKT Marketplace V1..."
# tezos-client -E $MAINNET_NODE get contract code for KT1FvqJwEDWb1Gwc55Jd1jjTHRVWbYKUUpyq > data/objkt_marketplace_V1.tz
# echo "--> Downloaded OBJKT Marketplace V1"

echo

echo "Deploying OBJKT Marketplace V1"
tezos-client -l -E $TARGET_NODE originate contract objkt_marketplace_v1_$NETWORK transferring 0 from $ORIGINATOR_ALIAS running contracts/objkt_marketplace_V1.tz --init '(Pair (Pair "'$ADMIN_ADDRESS'" (Pair 0 {})) (Pair (Pair 0 {}) (Pair 0 {})))' --burn-cap 10 --force > data/marketplace_deploy.txt
objkt_marketplace=$(sed -n '/^.*New[[:space:]]contract[[:space:]]\{1,\}\([-_[:alnum:]]\{1,\}\).*$/s//\1/p' data/marketplace_deploy.txt)
echo $objkt_marketplace
