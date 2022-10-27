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

source contracts.env

echo "Minting NFT..."
tezos-client -E $TARGET_NODE transfer 0 from $ORIGINATOR_ALIAS to $objkt_fa2 --entrypoint "mint" --arg 'Pair (Pair "'$NFT_OWNER'" 10000) (Pair { Elt "" 0x697066733a2f2f516d58654b3661595555487164655152396e36437952727464466b546d5966746b504847426d74794762554a314d } 0)'
