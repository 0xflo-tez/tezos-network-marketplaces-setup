#!/bin/bash
echo "Setting up VERSUM contracts"
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

#Versum market -> KT1GyRAJNdizF1nojQz62uGYkx8WFRUJm9X5
#Versum administrator -> KT1XumYAxnPCrDiLU4XLNciZncExAzdEJrua
#Versum contract registry -> KT1BMWkNX3zRDH1a6A4PJ1uHjhAm44jhQvrB
#Versum identity -> KT1NUrzs7tiT4VbNPqeTxgAFa4SXeV1f3xe9
#Versum royalties -> KT1NffZ1mqqcXrwYY3ZNaAYxhYkyiDvvTZ3C
#Versum items -> KT1LjmAdYQCLBjwv4S2oFkEzyHVkomAf5MrW
#Versum materia -> KT1KRvNVubq64ttPbQarxec5XdS6ZQU4DVD2

mkdir -p data
echo "Downloading contract codes..."

echo "- Downloading VERSUM market..."
tezos-client -E $MAINNET_NODE get contract code for KT1GyRAJNdizF1nojQz62uGYkx8WFRUJm9X5 > contracts/versum_market.tz
echo "--> Downloaded VERSUM market"

echo "- Downloading VERSUM administrator..."
tezos-client -E $MAINNET_NODE get contract code for KT1XumYAxnPCrDiLU4XLNciZncExAzdEJrua > contracts/versum_admin.tz
echo "--> Downloaded VERSUM administrator"

echo "- Downloading VERSUM contract registry..."
tezos-client -E $MAINNET_NODE get contract code for KT1BMWkNX3zRDH1a6A4PJ1uHjhAm44jhQvrB > contracts/versum_registry.tz
echo "--> Downloaded VERSUM contract registry"

echo "- Downloading VERSUM identity..."
tezos-client -E $MAINNET_NODE get contract code for KT1NUrzs7tiT4VbNPqeTxgAFa4SXeV1f3xe9 > contracts/versum_identity.tz
echo "--> Downloaded VERSUM identity"

echo "- Downloading VERSUM royalties..."
tezos-client -E $MAINNET_NODE get contract code for KT1NffZ1mqqcXrwYY3ZNaAYxhYkyiDvvTZ3C > contracts/versum_royalties.tz
echo "--> Downloaded VERSUM royalties"

echo "- Downloading VERSUM item..."
tezos-client -E $MAINNET_NODE get contract code for KT1LjmAdYQCLBjwv4S2oFkEzyHVkomAf5MrW > contracts/versum_items.tz
echo "--> Downloaded VERSUM items"

echo "- Downloading VERSUM materia..."
tezos-client -E $MAINNET_NODE get contract code for KT1KRvNVubq64ttPbQarxec5XdS6ZQU4DVD2 > contracts/versum_items.tz
echo "--> Downloaded VERSUM materia"

echo