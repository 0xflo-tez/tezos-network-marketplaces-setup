#!/bin/bash
echo "Setting up VERSUM contracts"
echo "Loading configuration"
source .env
source contracts.env

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
#Versum KYC proxy -> KT1CdAeM5FzmtUVypP6RnihDBxzj5ssYLhUK
#Versum Price proxy -> KT1LZoWxTR6c6HNZVsKZaEpcyujGgJdvCNCV

mkdir -p data

source contracts.env

echo "Minting Versum item..."
tezos-client -E $TARGET_NODE transfer 0 from $ORIGINATOR_ALIAS to $versum_fa2  --entrypoint "mint" --arg '(Pair (Pair (Pair 1000000 {}) (Pair 1000000 { Elt "" 0x697066733a2f2f516d52537a66557876425874574751725a5971486a325a56755658364e567544384b6159747a6f6441394a555152 })) (Pair (Pair None False) (Pair 100 { Pair "'$ADMIN_ADDRESS'" 1000 })))' --burn-cap 10
