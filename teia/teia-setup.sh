#!/bin/bash
echo "Setting up Teia contracts"
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

#Teia Marketplace - KT1PHubm9HtyQEJ4BBpMTVomq6mhbfNZ9z5w
#HEN Marketplace - KT1HbQepzV1nVGg8QVznG7z4RcHseD5kwqBn
#HEN NFTs - KT1RJ6PbjHpwc3M5rw5s2Nbmefwbuwbdxton
#HEN Manager - KT1Hkg5qeNhfwpKW4fXvq7HGZB9z2EnmCCA9
#HEN Curate - KT1TybhR7XraG75JFYKSrh7KnxukMBT5dor6
#HEN HDAO - KT1AFA2mwNUMNd4SsujE1YYp29vd8BZejyKW


# echo "- Downloading Teia Marketplace..."
# tezos-client -E $MAINNET_NODE get contract code for KT1PHubm9HtyQEJ4BBpMTVomq6mhbfNZ9z5w > data/teia_market.tz
# echo "--> Downloaded HEN Permission module"

# echo "- Downloading HEN OBJKTS..."
# tezos-client -E $MAINNET_NODE get contract code for KT1RJ6PbjHpwc3M5rw5s2Nbmefwbuwbdxton > data/teia_objkts.tz
# echo "--> Downloaded HEN OBJKTS"

# echo "- Downloading HEN Manager..."
# tezos-client -E $MAINNET_NODE get contract code for KT1Hkg5qeNhfwpKW4fXvq7HGZB9z2EnmCCA9 > data/teia_manager.tz
# echo "--> Downloaded HEN Manager"

# echo "- Downloading HEN Curate..."
# tezos-client -E $MAINNET_NODE get contract code for KT1TybhR7XraG75JFYKSrh7KnxukMBT5dor6 > data/teia_curate.tz
# echo "--> Downloaded HEN Curate"

# echo "- Downloading HEN HDAO..."
# tezos-client -E $MAINNET_NODE get contract code for KT1AFA2mwNUMNd4SsujE1YYp29vd8BZejyKW > data/teia_hdao.tz
# echo "--> Downloaded HEN HDAO"
# echo

echo "Setting up Teia env..."
echo "- Deploying HEN OBJKTS..."
tezos-client -E $TARGET_NODE originate contract teia_objkts_$NETWORK transferring 0 from $ORIGINATOR_ALIAS running contracts/teia_objkts.tz --init '(Pair (Pair "'$ADMIN_ADDRESS'" (Pair 0 {})) (Pair (Pair {} {}) (Pair False {})))' --burn-cap 10 --force > data/teia_objkts_deploy.txt
hen_objkts=$(sed -n '/^.*New[[:space:]]contract[[:space:]]\{1,\}\([-_[:alnum:]]\{1,\}\).*$/s//\1/p' data/teia_objkts_deploy.txt)
echo "→ $hen_objkts"

echo "- Deploying HEN hDAO..."
tezos-client -E $TARGET_NODE originate contract teia_hdao_$NETWORK transferring 0 from $ORIGINATOR_ALIAS running contracts/teia_hdao.tz --init '(Pair (Pair "'$ADMIN_ADDRESS'" (Pair 0 {})) (Pair (Pair {} {}) (Pair False {})))' --burn-cap 10 --force > data/teia_hdao_deploy.txt
hen_hdao=$(sed -n '/^.*New[[:space:]]contract[[:space:]]\{1,\}\([-_[:alnum:]]\{1,\}\).*$/s//\1/p' data/teia_hdao_deploy.txt)
echo "→ $hen_hdao"

echo "- Deploying HEN Curate..."
tezos-client -E $TARGET_NODE originate contract teia_curate_$NETWORK transferring 0 from $ORIGINATOR_ALIAS running contracts/teia_curate.tz --init '(Pair (Pair {} (Pair "'$hen_hdao'" False)) (Pair "'$ADMIN_ADDRESS'" (Pair {} "'$ADMIN_ADDRESS'")))' --burn-cap 10 --force > data/teia_curate_deploy.txt
hen_curate=$(sed -n '/^.*New[[:space:]]contract[[:space:]]\{1,\}\([-_[:alnum:]]\{1,\}\).*$/s//\1/p' data/teia_curate_deploy.txt)
echo "→ $hen_curate"

echo "- Deploying HEN Manager..."
tezos-client -E $TARGET_NODE originate contract teia_manager_$NETWORK transferring 0 from $ORIGINATOR_ALIAS running contracts/teia_manager.tz --init '(Pair (Pair (Pair "'$hen_curate'" (Pair 1618452581 "'$hen_hdao'")) (Pair True (Pair "'$ADMIN_ADDRESS'" {}))) (Pair (Pair "'$hen_objkts'" (Pair 763001 {})) (Pair 0 (Pair 348155 {}))))' --burn-cap 10 --force > data/teia_manager_deploy.txt
hen_manager=$(sed -n '/^.*New[[:space:]]contract[[:space:]]\{1,\}\([-_[:alnum:]]\{1,\}\).*$/s//\1/p' data/teia_manager_deploy.txt)
echo "→ $hen_manager"

echo "- Configuring HEN Curate..."
tezos-client -E $TARGET_NODE transfer 0 from $ORIGINATOR_ALIAS to $hen_curate --entrypoint "configure" --arg 'Pair "'$hen_hdao'" "'$hen_manager'"' --burn-cap 10 > data/teia_curate_configuration.txt

echo "- Configuring HEN Objkts..."
tezos-client -E $TARGET_NODE transfer 0 from $ORIGINATOR_ALIAS to $hen_objkts --entrypoint "set_administrator" --arg '"'$hen_manager'"' --burn-cap 10 > data/teia_objkts_configuration.txt

echo "- Configuring HEN hDAO..."
tezos-client -E $TARGET_NODE transfer 0 from $ORIGINATOR_ALIAS to $hen_hdao --entrypoint "set_administrator" --arg '"'$hen_manager'"' --burn-cap 10 > data/teia_hdao_configuration.txt

echo "- Deploying Teia Marketplace..."
tezos-client -E $TARGET_NODE originate contract teia_marketplace_$NETWORK transferring 0 from $ORIGINATOR_ALIAS running contracts/teia_market.tz --init '(Pair (Pair (Pair { Elt "'$hen_objkts'" Unit } False) (Pair 0 (Pair 0 "'$ADMIN_ADDRESS'"))) (Pair (Pair "'$ADMIN_ADDRESS'" {}) (Pair None (Pair {} False))))' --burn-cap 10 --force > data/teia_market_deploy.txt
teia_market=$(sed -n '/^.*New[[:space:]]contract[[:space:]]\{1,\}\([-_[:alnum:]]\{1,\}\).*$/s//\1/p' data/teia_market_deploy.txt)
echo "→ $teia_market"

echo "- Minting OBJKT..."
tezos-client -E $TARGET_NODE transfer 0 from $ORIGINATOR_ALIAS to $hen_manager --entrypoint "mint_OBJKT" --arg '(Pair  (Pair "'$ADMIN_ADDRESS'" 10000)  (Pair 0x697066733a2f2f516d504438474d4d444c326647376f4b4a6a3539705a6e674550435436324b6b746771755a456334526566764d7a 100))' --burn-cap 10 > data/teia_minting.txt

echo "- Set operator.."
tezos-client -E $TARGET_NODE transfer 0 from $ORIGINATOR_ALIAS to $hen_objkts --entrypoint "update_operators" --arg '{ Left (Pair "'$ADMIN_ADDRESS'" (Pair "'$teia_market'" 763001)) }' --burn-cap 10 > data/teia_minting.txt

echo "- Swapping OBJKT..."
tezos-client -E $TARGET_NODE transfer 0 from $ORIGINATOR_ALIAS to $teia_market --entrypoint "swap" --arg '(Pair "'$hen_objkts'" (Pair 763001 (Pair 10000 (Pair 1000 (Pair 100 "'$ADMIN_ADDRESS'")))))' --burn-cap 10 > data/teia_swap.txt

echo "- Collect OBJKT..."
tezos-client -E $TARGET_NODE transfer 0.001 from bob to $teia_market --entrypoint "collect" --arg '0' --burn-cap 10 > data/teia_collect.txt

#tezos-client -E $TARGET_NODE transfer 0 from $ORIGINATOR_ALIAS to $teia_market --entrypoint "add_fa2" --arg "\"KT1P2VyFd61A3ukizJoX37nFF9fqZnihv7Lw\""
#tezos-client -E https://rpc.tzkt.io/ithacanet/ transfer 0 from alice to KT1Anx515N2PK8A2ZX5uGNn7Gckh4WytLJmK --entrypoint "add_fa2" --arg "\"KT1P2VyFd61A3ukizJoX37nFF9fqZnihv7Lw\"" --burn-cap 0.01675
#tezos-client -E http://tezos-node.dev.rarible.int transfer 0 from alice to KT1SMn9NzXNvdMvtaK8gE5GHgYj8ZxCuSyWN --entrypoint "add_fa2" --arg "\"KT1E59fZ5vxx67h8spyQqT8nC3k9scmBBkkd\"" --burn-cap 0.01675

echo
echo "All done !"