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

mkdir -p data
# echo "Downloading contract codes..."

# echo "- Downloading FXHASH Market..."
# tezos-client -E $MAINNET_NODE get contract code for KT1Xo5B7PNBAeynZPmca4bRh6LQow4og1Zb9 > contracts/fxhash_market.tz
# echo "--> Downloaded XHASH Market"

# echo "- Downloading FXHASH FA2..."
# tezos-client -E $MAINNET_NODE get contract code for KT1KEa8z6vWXDJrVqtMrAeDVzsvxat3kHaCE > contracts/fxhash_fa2.tz
# echo "--> Downloaded FXHASH FA2"

echo

echo "" > contracts.env

echo "Deploying FXHASH FA2"
tezos-client -E $TARGET_NODE originate contract fxhash_fa2_$NETWORK transferring 0 from $ORIGINATOR_ALIAS running contracts/fxhash_fa2.tz --init '(Pair (Pair (Pair "'$ADMIN_ADDRESS'" 0) (Pair "'$ADMIN_ADDRESS'" (Pair {} {}))) (Pair (Pair {} (Pair False "'$ADMIN_ADDRESS'")) (Pair {} (Pair {} "'$ADMIN_ADDRESS'"))))
' --burn-cap 10 --force > data/fxhash_fa2_deploy.txt
fxhash_fa2=$(sed -n '/^.*New[[:space:]]contract[[:space:]]\{1,\}\([-_[:alnum:]]\{1,\}\).*$/s//\1/p' data/fxhash_fa2_deploy.txt)
echo $fxhash_fa2
echo "fxhash_fa2=$fxhash_fa2" >> contracts.env

echo "Deploying FXHASH Market"
tezos-client -E $TARGET_NODE originate contract fxhash_market_v1_$NETWORK transferring 0 from $ORIGINATOR_ALIAS running contracts/fxhash_market.tz --init '(Pair (Pair (Pair "'$ADMIN_ADDRESS'" 0) (Pair True 25)) (Pair (Pair { Elt "" 0x697066733a2f2f516d52476858556e6332733463765774576b626b434c45714470366d34735a7641616f5243387a5659373170505a } "'$fxhash_fa2'") (Pair {} "'$ADMIN_ADDRESS'")))' --burn-cap 10 --force > data/fxhash_market_v1_deploy.txt
fxhash_market=$(sed -n '/^.*New[[:space:]]contract[[:space:]]\{1,\}\([-_[:alnum:]]\{1,\}\).*$/s//\1/p' data/fxhash_market_v1_deploy.txt)
echo $fxhash_market
echo "fxhash_market=$fxhash_market" >> contracts.env

echo "Minting NFT..."
tezos-client -E $TARGET_NODE transfer 0 from $ORIGINATOR_ALIAS to $fxhash_fa2 --entrypoint "mint" --arg 'Pair (Pair "'$ADMIN_ADDRESS'" (Pair 0 10000000)) (Pair {} (Pair 100 1))' --burn-cap 10 > data/fxhash_mint.txt
tezos-client -E $TARGET_NODE transfer 0 from $ORIGINATOR_ALIAS to $fxhash_fa2 --entrypoint "assign_metadata" --arg 'Pair { Elt "" 0x697066733a2f2f516d61373276375743746744463666615176744c4a56355765436e5a4e4b42773448457066676471356662565566 } 1' --burn-cap 10 > data/fxhash_assign.txt

echo "Selling NFT..."
tezos-client -E $TARGET_NODE transfer 0 from $ORIGINATOR_ALIAS to $fxhash_fa2 --entrypoint "update_operators" --arg '{ Left (Pair "'$ADMIN_ADDRESS'" (Pair "'$fxhash_market'" 1)) }' --burn-cap 10 > data/fxhash_update_operators.txt
tezos-client -E $TARGET_NODE transfer 0 from $ORIGINATOR_ALIAS to $fxhash_market --entrypoint "offer" --arg 'Pair (Pair "'$ADMIN_ADDRESS'" 1) (Pair 1000 100)' --burn-cap 10 > data/fxhash_sell.txt
echo "Buying NFT..."
tezos-client -E $TARGET_NODE transfer 0.01 from bob to $fxhash_market --entrypoint "collect" --arg '0' --burn-cap 10 > data/fxhash_buy.txt


echo "All done !"
