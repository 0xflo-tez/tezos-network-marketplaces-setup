#!/bin/bash
echo "Setting up FXHASH V2 contracts"
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

# echo "- Downloading FXHASH Market..."
# tezos-client -E $MAINNET_NODE get contract code for KT1GbyoDi7H1sfXmimXpptZJuCdHMh66WS9u > contracts/fxhash_market.tz
# echo "--> Downloaded XHASH Market"

# echo "- Downloading FXHASH FA2..."
# tezos-client -E $MAINNET_NODE get contract code for KT1U6EHmNxJTkvaWJ4ThczG4FSDaHC21ssvi > contracts/fxhash_fa2.tz
# echo "--> Downloaded FXHASH FA2"

# echo

source contracts.env

echo "Minting NFT..."
tezos-client -E $TARGET_NODE transfer 0 from $ORIGINATOR_ALIAS to $fxhash_fa2 --entrypoint "mint" --arg 'Pair (Pair "'$ADMIN_ADDRESS'" (Pair 0 100000)) (Pair (Pair {} 150) (Pair { Pair "'$ADMIN_ADDRESS'" 1000 } 0))' --burn-cap 10
echo "Assigning metadata ..."
tezos-client -E $TARGET_NODE transfer 0 from $ORIGINATOR_ALIAS to $fxhash_fa2 --entrypoint "assign_metadata" --arg '{ Pair { Elt "" 0x697066733a2f2f516d6446426268767a594e6a624a6f746438584b6d57504b72784a6b6e353677706b67746e50624d523655573654 } 0 }' --burn-cap 10 > data/fxhash_assign.txt

echo "All done !"
