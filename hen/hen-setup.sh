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
# echo "Downloading contract codes..."

#HEN Marketplace - KT1HbQepzV1nVGg8QVznG7z4RcHseD5kwqBn
#HEN NFTs - KT1RJ6PbjHpwc3M5rw5s2Nbmefwbuwbdxton
#HEN Manager - KT1Hkg5qeNhfwpKW4fXvq7HGZB9z2EnmCCA9
#HEN Curate - KT1TybhR7XraG75JFYKSrh7KnxukMBT5dor6
#HEN HDAO - KT1AFA2mwNUMNd4SsujE1YYp29vd8BZejyKW


# echo "- Downloading HEN Marketplace..."
# tezos-client -E $MAINNET_NODE get contract code for KT1HbQepzV1nVGg8QVznG7z4RcHseD5kwqBn > data/hen_market.tz
# echo "--> Downloaded HEN Permission module"

# echo "- Downloading HEN OBJKTS..."
# tezos-client -E $MAINNET_NODE get contract code for KT1RJ6PbjHpwc3M5rw5s2Nbmefwbuwbdxton > data/hen_objkts.tz
# echo "--> Downloaded HEN OBJKTS"

# echo "- Downloading HEN Manager..."
# tezos-client -E $MAINNET_NODE get contract code for KT1Hkg5qeNhfwpKW4fXvq7HGZB9z2EnmCCA9 > data/hen_manager.tz
# echo "--> Downloaded HEN Manager"

# echo "- Downloading HEN Curate..."
# tezos-client -E $MAINNET_NODE get contract code for KT1TybhR7XraG75JFYKSrh7KnxukMBT5dor6 > data/hen_curate.tz
# echo "--> Downloaded HEN Curate"

# echo "- Downloading HEN HDAO..."
# tezos-client -E $MAINNET_NODE get contract code for KT1AFA2mwNUMNd4SsujE1YYp29vd8BZejyKW > data/hen_hdao.tz
# echo "--> Downloaded HEN HDAO"
# echo

echo "Deploying HEN OBJKTS"
tezos-client -E $TARGET_NODE originate contract hen_objkts_$NETWORK transferring 0 from $ORIGINATOR_ALIAS running contracts/hen_objkts.tz --init '(Pair (Pair "'$ADMIN_ADDRESS'" (Pair 0 {})) (Pair (Pair {} {}) (Pair False {})))' --burn-cap 10 --force > data/hen_objkts_deploy.txt
hen_objkts=$(sed -n '/^.*New[[:space:]]contract[[:space:]]\{1,\}\([-_[:alnum:]]\{1,\}\).*$/s//\1/p' data/hen_objkts_deploy.txt)
echo $hen_objkts

echo "Deploying HEN Marketplace"
tezos-client -E $TARGET_NODE originate contract hen_marketplace_$NETWORK transferring 0 from $ORIGINATOR_ALIAS running contracts/hen_market.tz --init '(Pair (Pair 0 (Pair 0 "'$ADMIN_ADDRESS'")) (Pair {} (Pair "'$hen_objkts'" {})))' --burn-cap 10 --force > data/hen_market_deploy.txt
hen_market=$(sed -n '/^.*New[[:space:]]contract[[:space:]]\{1,\}\([-_[:alnum:]]\{1,\}\).*$/s//\1/p' data/hen_market_deploy.txt)
echo $hen_market

echo "Deploying HEN hDAO"
tezos-client -E $TARGET_NODE originate contract hen_hdao_$NETWORK transferring 0 from $ORIGINATOR_ALIAS running contracts/hen_hdao.tz --init '(Pair (Pair "'$ADMIN_ADDRESS'" (Pair 0 {})) (Pair (Pair {} {}) (Pair False {})))' --burn-cap 10 --force > data/hen_hdao_deploy.txt
hen_hdao=$(sed -n '/^.*New[[:space:]]contract[[:space:]]\{1,\}\([-_[:alnum:]]\{1,\}\).*$/s//\1/p' data/hen_hdao_deploy.txt)
echo $hen_hdao

echo "Deploying HEN Curate"
tezos-client -E $TARGET_NODE originate contract hen_curate_$NETWORK transferring 0 from $ORIGINATOR_ALIAS running contracts/hen_curate.tz --init '(Pair (Pair {} (Pair "'$hen_hdao'" False)) (Pair "'$ADMIN_ADDRESS'" (Pair {} "'$ADMIN_ADDRESS'")))' --burn-cap 10 --force > data/hen_curate_deploy.txt
hen_curate=$(sed -n '/^.*New[[:space:]]contract[[:space:]]\{1,\}\([-_[:alnum:]]\{1,\}\).*$/s//\1/p' data/hen_curate_deploy.txt)
echo $hen_curate

echo "Deploying HEN Manager"
tezos-client -E $TARGET_NODE originate contract hen_manager_$NETWORK transferring 0 from $ORIGINATOR_ALIAS running contracts/hen_manager.tz --init '(Pair (Pair (Pair "'$hen_curate'" (Pair 1618452581 "'$hen_hdao'")) (Pair True (Pair "'$ADMIN_ADDRESS'" {}))) (Pair (Pair "'$hen_objkts'" (Pair 763001 {})) (Pair 0 (Pair 348155 {}))))' --burn-cap 10 --force > data/hen_manager_deploy.txt
hen_manager=$(sed -n '/^.*New[[:space:]]contract[[:space:]]\{1,\}\([-_[:alnum:]]\{1,\}\).*$/s//\1/p' data/hen_manager_deploy.txt)
echo $hen_manager

tezos-client -E $TARGET_NODE transfer 0 from $ORIGINATOR_ALIAS to $hen_market --entrypoint "update_manager" --arg '"'$hen_manager'"' --burn-cap 10
tezos-client -E $TARGET_NODE transfer 0 from $ORIGINATOR_ALIAS to $hen_objkts --entrypoint "set_administrator" --arg '"'$hen_manager'"' --burn-cap 10
tezos-client -E $TARGET_NODE transfer 0 from $ORIGINATOR_ALIAS to $hen_curate --entrypoint "configure" --arg 'Pair "'$hen_hdao'" "'$hen_manager'"' --burn-cap 10
tezos-client -E $TARGET_NODE transfer 0 from $ORIGINATOR_ALIAS to $hen_hdao --entrypoint "set_administrator" --arg '"'$hen_manager'"' --burn-cap 10
