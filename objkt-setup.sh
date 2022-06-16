#!/bin/bash
echo "Setting up objkt.com contracts"
echo "Loading configuration"
source .env

if [ -z ${ADMIN_ADDRESS+x} ];
then echo "Missing env var: ADMIN_ADDRESS";
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
echo "Downloading contract codes..."
echo "- Downloading OBJKT Permission module..."
tezos-client -E $MAINNET_NODE get contract code for KT1DF2c7VUED7W3h5BnqUKdB87Ke7XdCjQiY > data/objkt_permission_module.tz
echo "--> Downloaded OBJKT Permission module"
echo "- Downloading OBJKT Marketplace..."
tezos-client -E $MAINNET_NODE get contract code for KT1WvzYHCNBvDSdwafTHv7nJ1dWmZ8GCYuuC > data/objkt_marketplace.tz
echo "--> Downloaded OBJKT Marketplace"
echo "- Downloading OBJKT Token Registry..."
tezos-client -E $MAINNET_NODE get contract code for KT1Pbj1uKjxZJLHyoQ2YUs4kukjvLJdheyfU > data/objkt_token_registry.tz
echo "--> Downloaded OBJKT Marketplace"

echo
echo "Deploying OBJKT Permission module"
tezos-client -E $TARGET_NODE originate contract objkt_permission_module_$NETWORK transferring 0 from $ORIGINATOR_ALIAS running data/objkt_permission_module.tz --init '"'$ADMIN_ADDRESS'"' --burn-cap 1.8225 --force > data/permission_module_deploy.txt
permission_module_contract=$(sed -n '/^.*New[[:space:]]contract[[:space:]]\{1,\}\([-_[:alnum:]]\{1,\}\).*$/s//\1/p' data/permission_module_deploy.txt)
echo $permission_module_contract

echo "Deploying OBJKT Token contract"
tezos-client -E $TARGET_NODE originate contract objkt_token_registry_$NETWORK transferring 0 from $ORIGINATOR_ALIAS running data/objkt_token_registry.tz --init '(Pair (Pair {} (Pair 250 {})) (Pair (Pair {} {}) (Pair "'$permission_module_contract'" (Pair None None))))' --burn-cap 1.8225 --force > data/token_registry_deploy.txt
token_registry_contract=$(sed -n '/^.*New[[:space:]]contract[[:space:]]\{1,\}\([-_[:alnum:]]\{1,\}\).*$/s//\1/p' data/token_registry_deploy.txt)
echo $token_registry_contract

echo "Deploying OBJKT Marketplace contract"
tezos-client -E $TARGET_NODE originate contract objkt_marketplace_$NETWORK transferring 0 from $ORIGINATOR_ALIAS running data/objkt_marketplace.tz --init '(Pair (Pair (Pair (Pair {} {}) (Pair 0 0)) (Pair (Pair {} False) (Pair "'$permission_module_contract'" (Pair "'$token_registry_contract'" False)))) {})' --burn-cap 1.8225 --force > data/marketplace_deploy.txt
marketplace_contract=$(sed -n '/^.*New[[:space:]]contract[[:space:]]\{1,\}\([-_[:alnum:]]\{1,\}\).*$/s//\1/p' data/marketplace_deploy.txt)
echo $marketplace_contract