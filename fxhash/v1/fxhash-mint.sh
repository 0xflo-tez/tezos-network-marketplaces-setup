#!/bin/bash
echo "Setting up FXHASH V1 contracts"
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

source contracts.env

echo "Minting NFT..."
tezos-client -E $TARGET_NODE transfer 0 from $ORIGINATOR_ALIAS to $fxhash_fa2 --entrypoint "mint" --arg 'Pair (Pair "'$ADMIN_ADDRESS'" (Pair 0 10000000)) (Pair {} (Pair 100 1))' --burn-cap 10
echo "Assigning metadata ..."
tezos-client -E $TARGET_NODE transfer 0 from $ORIGINATOR_ALIAS to $fxhash_fa2 --entrypoint "assign_metadata" --arg 'Pair { Elt "" 0x697066733a2f2f516d61373276375743746744463666615176744c4a56355765436e5a4e4b42773448457066676471356662565566 } 1' --burn-cap 10 > data/fxhash_assign.txt


echo "All done !"
