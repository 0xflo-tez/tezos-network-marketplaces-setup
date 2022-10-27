#!/bin/bash
echo "Setting up hic et nunc contracts"
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

source contracts.env
echo "- Minting OBJKT..."
tezos-client -E $TARGET_NODE transfer 0 from $ORIGINATOR_ALIAS to $hen_manager --entrypoint "mint_OBJKT" --arg '(Pair  (Pair "'$ADMIN_ADDRESS'" 1000)  (Pair 0x697066733a2f2f516d504438474d4d444c326647376f4b4a6a3539705a6e674550435436324b6b746771755a456334526566764d7a 100))' --burn-cap 10

echo
echo "All done !"