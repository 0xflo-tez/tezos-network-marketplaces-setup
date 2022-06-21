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

echo "- Downloading OBJKT Token Registry..."
tezos-client -E $MAINNET_NODE get contract code for KT1Pbj1uKjxZJLHyoQ2YUs4kukjvLJdheyfU > data/objkt_token_registry.tz
echo "--> Downloaded Token Registry"

echo "- Downloading OBJKT Marketplace..."
tezos-client -E $MAINNET_NODE get contract code for KT1WvzYHCNBvDSdwafTHv7nJ1dWmZ8GCYuuC > data/objkt_marketplace.tz
echo "--> Downloaded OBJKT Marketplace"

echo

echo "Deploying OBJKT Permission module"
tezos-client -E $TARGET_NODE originate contract objkt_permission_module_$NETWORK transferring 0 from $ORIGINATOR_ALIAS running data/objkt_permission_module.tz --init '"'$ADMIN_ADDRESS'"' --burn-cap 1.8225 --force > data/permission_module_deploy.txt
permission_module_contract=$(sed -n '/^.*New[[:space:]]contract[[:space:]]\{1,\}\([-_[:alnum:]]\{1,\}\).*$/s//\1/p' data/permission_module_deploy.txt)
echo $permission_module_contract

echo "Deploying OBJKT Token registry contract"
tezos-client -E $TARGET_NODE originate contract objkt_token_registry_$NETWORK transferring 0 from $ORIGINATOR_ALIAS running data/objkt_token_registry.tz --init '(Pair (Pair {} (Pair 250 {})) (Pair (Pair {} {}) (Pair "'$permission_module_contract'" (Pair None None))))' --burn-cap 1.8225 --force > data/token_registry_deploy.txt
token_registry_contract=$(sed -n '/^.*New[[:space:]]contract[[:space:]]\{1,\}\([-_[:alnum:]]\{1,\}\).*$/s//\1/p' data/token_registry_deploy.txt)
echo $token_registry_contract

echo "Deploying OBJKT Marketplace contract"
tezos-client -E $TARGET_NODE originate contract objkt_marketplace_$NETWORK transferring 0 from $ORIGINATOR_ALIAS running data/objkt_marketplace.tz --init '(Pair (Pair (Pair (Pair {} {}) (Pair 1000000 1000000))
            (Pair (Pair {} False)
                  (Pair "'$permission_module_contract'"
                        (Pair "'$token_registry_contract'" True))))
      { Elt 0
            { { UNPAIR ;
                IF_LEFT
                  { IF_LEFT {} { PUSH int -1 ; FAILWITH } }
                  { PUSH int -1 ; FAILWITH } ;
                SWAP ;
                DUP ;
                DUG 2 ;
                GET 5 ;
                UNIT ;
                VIEW "is_paused" bool ;
                IF_NONE { PUSH int 195 ; FAILWITH } {} ;
                IF { PUSH string "UH_PAUSED" ; FAILWITH } {} ;
                DUP ;
                GET 3 ;
                IF_LEFT
                  { DROP ;
                    DUP ;
                    GET 5 ;
                    PUSH nat 0 ;
                    COMPARE ;
                    LT ;
                    IF {} { PUSH string "M_MIN_0_FA12" ; FAILWITH } }
                  { IF_LEFT
                      { DROP ;
                        DUP ;
                        GET 5 ;
                        PUSH nat 0 ;
                        COMPARE ;
                        LT ;
                        IF {} { PUSH string "M_MIN_0_FA2" ; FAILWITH } }
                      { DROP } } ;
                SWAP ;
                DUP ;
                DUG 2 ;
                GET 7 ;
                SWAP ;
                DUP ;
                CAR ;
                CAR ;
                SWAP ;
                DUP ;
                DUG 3 ;
                GET 3 ;
                PAIR ;
                VIEW "get_override"
                     (pair (option %beneficiary_override address) (option %fee_override nat)) ;
                IF_NONE { PUSH string "Payment token not registered" ; FAILWITH } {} ;
                DUP ;
                CDR ;
                IF_NONE
                  { PUSH nat 0 ;
                    DUP 3 ;
                    GET 9 ;
                    ITER { CAR ; ADD } ;
                    DUP 4 ;
                    GET 7 ;
                    UNIT ;
                    VIEW "get_default_management_fee" nat ;
                    IF_NONE { PUSH int 214 ; FAILWITH } {} ;
                    PUSH nat 10000 ;
                    SUB ;
                    ISNAT ;
                    IF_NONE { PUSH int 22 ; FAILWITH } {} ;
                    SWAP ;
                    COMPARE ;
                    LE ;
                    IF {} { PUSH string "R_INVALID_SHARES_TOTAL" ; FAILWITH } }
                  { DROP ;
                    PUSH nat 0 ;
                    DUP 3 ;
                    GET 9 ;
                    ITER { CAR ; ADD } ;
                    SWAP ;
                    DUP ;
                    DUG 2 ;
                    CDR ;
                    IF_NONE { PUSH int 197 ; FAILWITH } {} ;
                    PUSH nat 10000 ;
                    SUB ;
                    ISNAT ;
                    IF_NONE { PUSH int 22 ; FAILWITH } {} ;
                    SWAP ;
                    COMPARE ;
                    LE ;
                    IF {} { PUSH string "R_INVALID_SHARES_TOTAL" ; FAILWITH } } ;
                DUP 3 ;
                UNPAIR ;
                UNPAIR ;
                UNPAIR ;
                DIG 5 ;
                DUP ;
                GET 12 ;
                SWAP ;
                DUP ;
                GET 11 ;
                SWAP ;
                DUP ;
                GET 9 ;
                SWAP ;
                DUP ;
                GET 7 ;
                SWAP ;
                DUP ;
                GET 5 ;
                SWAP ;
                DUP ;
                GET 3 ;
                SWAP ;
                DUP ;
                DUG 12 ;
                CAR ;
                SENDER ;
                PAIR 8 ;
                DIG 5 ;
                DROP ;
                DIG 5 ;
                DROP ;
                SOME ;
                DIG 5 ;
                CAR ;
                GET 3 ;
                UPDATE ;
                PAIR ;
                SWAP ;
                UNPAIR ;
                PUSH nat 1 ;
                ADD ;
                PAIR ;
                SWAP ;
                PAIR ;
                PAIR ;
                NIL operation ;
                PAIR } } ;
        Elt 1
            { { UNPAIR ;
                IF_LEFT
                  { IF_LEFT
                      { PUSH int -1 ; FAILWITH }
                      { IF_LEFT {} { PUSH int -1 ; FAILWITH } } }
                  { PUSH int -1 ; FAILWITH } ;
                SWAP ;
                DUP ;
                DUG 2 ;
                GET 5 ;
                UNIT ;
                VIEW "is_paused" bool ;
                IF_NONE { PUSH int 195 ; FAILWITH } {} ;
                IF { PUSH string "UH_PAUSED" ; FAILWITH } {} ;
                SWAP ;
                DUP ;
                DUG 2 ;
                CAR ;
                CAR ;
                CAR ;
                SWAP ;
                DUP ;
                DUG 2 ;
                CAR ;
                GET ;
                IF_NONE { PUSH int 333 ; FAILWITH } {} ;
                DUP ;
                CAR ;
                SENDER ;
                COMPARE ;
                NEQ ;
                IF {} { PUSH string "M_NO_SELF_FULFILL" ; FAILWITH } ;
                SENDER ;
                DUP 3 ;
                CDR ;
                IF_NONE
                  {}
                  { DROP 2 ;
                    SWAP ;
                    DUP ;
                    DUG 2 ;
                    CDR ;
                    IF_NONE { PUSH int 338 ; FAILWITH } {} } ;
                SWAP ;
                DUP ;
                DUG 2 ;
                GET 14 ;
                IF_NONE
                  {}
                  { DROP ;
                    SWAP ;
                    DUP ;
                    DUG 2 ;
                    GET 14 ;
                    IF_NONE { PUSH int 342 ; FAILWITH } {} ;
                    SWAP ;
                    DUP ;
                    DUG 2 ;
                    COMPARE ;
                    EQ ;
                    IF {} { PUSH string "M_ONLY_TARGET" ; FAILWITH } } ;
                SWAP ;
                DUP ;
                DUG 2 ;
                GET 13 ;
                IF_NONE
                  {}
                  { DROP ;
                    SWAP ;
                    DUP ;
                    DUG 2 ;
                    GET 13 ;
                    IF_NONE { PUSH int 345 ; FAILWITH } {} ;
                    NOW ;
                    COMPARE ;
                    LT ;
                    IF {} { PUSH string "M_EXPIRED" ; FAILWITH } } ;
                SWAP ;
                DUP ;
                DUG 2 ;
                GET 5 ;
                IF_LEFT
                  { DROP ; PUSH bool False }
                  { IF_LEFT { DROP ; PUSH bool False } { DROP ; PUSH bool True } } ;
                IF { SWAP ;
                     DUP ;
                     DUG 2 ;
                     GET 7 ;
                     PUSH mutez 1 ;
                     AMOUNT ;
                     EDIV ;
                     IF_NONE { UNIT ; FAILWITH } {} ;
                     CAR ;
                     COMPARE ;
                     GE ;
                     IF {} { PUSH string "M_TEZ_AMOUNT_MISMATCH" ; FAILWITH } }
                   {} ;
                NIL operation ;
                DUP 3 ;
                GET 3 ;
                CAR ;
                CONTRACT %transfer
                  (list (pair (address %from_)
                              (list %txs (pair (address %to_) (pair (nat %token_id) (nat %amount)))))) ;
                IF_NONE { PUSH int 127 ; FAILWITH } {} ;
                PUSH mutez 0 ;
                NIL (pair address (list (pair address (pair nat nat)))) ;
                NIL (pair address (pair nat nat)) ;
                PUSH nat 1 ;
                DUP 8 ;
                GET 3 ;
                CDR ;
                DUP 8 ;
                PAIR 3 ;
                CONS ;
                DUP 7 ;
                CAR ;
                PAIR ;
                CONS ;
                TRANSFER_TOKENS ;
                CONS ;
                DUP 5 ;
                GET 7 ;
                UNIT ;
                VIEW "get_default_management_fee" nat ;
                IF_NONE { PUSH int 214 ; FAILWITH } {} ;
                DUP 6 ;
                GET 5 ;
                UNIT ;
                VIEW "get_treasury" address ;
                IF_NONE { PUSH int 171 ; FAILWITH } {} ;
                DUP 7 ;
                GET 7 ;
                DUP 6 ;
                GET 3 ;
                CAR ;
                DUP 7 ;
                GET 5 ;
                PAIR ;
                VIEW "get_override"
                     (pair (option %beneficiary_override address) (option %fee_override nat)) ;
                IF_NONE { PUSH string "Payment token not registered" ; FAILWITH } {} ;
                DUP ;
                CDR ;
                IF_NONE
                  {}
                  { DROP ;
                    DIG 2 ;
                    DROP ;
                    DUP ;
                    CDR ;
                    IF_NONE { PUSH int 367 ; FAILWITH } {} ;
                    DUG 2 } ;
                DUP ;
                CAR ;
                IF_NONE
                  {}
                  { DROP ;
                    SWAP ;
                    DROP ;
                    DUP ;
                    CAR ;
                    IF_NONE { PUSH int 369 ; FAILWITH } {} ;
                    SWAP } ;
                DUP 6 ;
                GET 5 ;
                IF_LEFT
                  { PUSH nat 0 ;
                    PUSH nat 10000 ;
                    DUP 6 ;
                    DUP 10 ;
                    GET 7 ;
                    MUL ;
                    EDIV ;
                    IF_NONE { PUSH int 106 ; FAILWITH } { CAR } ;
                    DUP ;
                    PUSH nat 0 ;
                    COMPARE ;
                    LT ;
                    IF { DIG 6 ;
                         DUP 4 ;
                         CONTRACT %transfer (pair (address %from) (pair (address %to) (nat %value))) ;
                         IF_NONE { PUSH int 184 ; FAILWITH } {} ;
                         PUSH mutez 0 ;
                         DUP 4 ;
                         DUP 9 ;
                         SENDER ;
                         PAIR 3 ;
                         TRANSFER_TOKENS ;
                         CONS ;
                         DUG 6 }
                       {} ;
                    DUP ;
                    DIG 2 ;
                    ADD ;
                    SWAP ;
                    DUP 9 ;
                    GET 11 ;
                    ITER { DUP ;
                           CAR ;
                           PUSH nat 10000 ;
                           SWAP ;
                           DUP 12 ;
                           GET 7 ;
                           MUL ;
                           EDIV ;
                           IF_NONE { PUSH int 114 ; FAILWITH } { CAR } ;
                           DUP ;
                           PUSH nat 0 ;
                           COMPARE ;
                           LT ;
                           IF { DIG 8 ;
                                DUP 6 ;
                                CONTRACT %transfer (pair (address %from) (pair (address %to) (nat %value))) ;
                                IF_NONE { PUSH int 184 ; FAILWITH } {} ;
                                PUSH mutez 0 ;
                                DUP 4 ;
                                DIG 5 ;
                                CDR ;
                                SENDER ;
                                PAIR 3 ;
                                TRANSFER_TOKENS ;
                                CONS ;
                                DUG 7 }
                              { SWAP ; DROP } ;
                           DIG 2 ;
                           ADD ;
                           SWAP } ;
                    SWAP ;
                    DUP ;
                    DUG 2 ;
                    DUP 10 ;
                    GET 7 ;
                    SUB ;
                    DUP 10 ;
                    GET 7 ;
                    DUP 4 ;
                    COMPARE ;
                    LE ;
                    IF {} { PUSH string "PH_INVALID_TOTAL" ; FAILWITH } ;
                    DUP ;
                    PUSH int 0 ;
                    COMPARE ;
                    LT ;
                    IF { SWAP ;
                         DROP ;
                         SWAP ;
                         DROP ;
                         DIG 2 ;
                         DROP ;
                         DIG 2 ;
                         DROP ;
                         DIG 2 ;
                         DROP ;
                         DIG 3 ;
                         DROP ;
                         DUG 2 ;
                         CONTRACT %transfer (pair (address %from) (pair (address %to) (nat %value))) ;
                         IF_NONE { PUSH int 184 ; FAILWITH } {} ;
                         PUSH mutez 0 ;
                         DIG 3 ;
                         ISNAT ;
                         IF_NONE { PUSH int 124 ; FAILWITH } {} ;
                         DUP 5 ;
                         CAR ;
                         SENDER ;
                         PAIR 3 ;
                         TRANSFER_TOKENS ;
                         CONS }
                       { DROP 7 ; SWAP ; DROP } }
                  { IF_LEFT
                      { PUSH nat 0 ;
                        PUSH nat 10000 ;
                        DUP 6 ;
                        DUP 10 ;
                        GET 7 ;
                        MUL ;
                        EDIV ;
                        IF_NONE { PUSH int 65 ; FAILWITH } { CAR } ;
                        DUP ;
                        PUSH nat 0 ;
                        COMPARE ;
                        LT ;
                        IF { DIG 6 ;
                             DUP 4 ;
                             CAR ;
                             CONTRACT %transfer
                               (list (pair (address %from_)
                                           (list %txs (pair (address %to_) (pair (nat %token_id) (nat %amount)))))) ;
                             IF_NONE { PUSH int 127 ; FAILWITH } {} ;
                             PUSH mutez 0 ;
                             NIL (pair address (list (pair address (pair nat nat)))) ;
                             NIL (pair address (pair nat nat)) ;
                             DUP 6 ;
                             DUP 9 ;
                             CDR ;
                             DUP 12 ;
                             PAIR 3 ;
                             CONS ;
                             SENDER ;
                             PAIR ;
                             CONS ;
                             TRANSFER_TOKENS ;
                             CONS ;
                             DUG 6 }
                           {} ;
                        DUP ;
                        DIG 2 ;
                        ADD ;
                        SWAP ;
                        NIL (pair address (pair nat nat)) ;
                        DUP 10 ;
                        GET 11 ;
                        ITER { DUP ;
                               CAR ;
                               PUSH nat 10000 ;
                               SWAP ;
                               DUP 13 ;
                               GET 7 ;
                               MUL ;
                               EDIV ;
                               IF_NONE { PUSH int 77 ; FAILWITH } { CAR } ;
                               DUP ;
                               PUSH nat 0 ;
                               COMPARE ;
                               LT ;
                               IF { DIG 2 ;
                                    SWAP ;
                                    DUP ;
                                    DUG 2 ;
                                    DUP 7 ;
                                    CDR ;
                                    DIG 4 ;
                                    CDR ;
                                    PAIR 3 ;
                                    CONS ;
                                    SWAP }
                                  { SWAP ; DROP } ;
                               DIG 3 ;
                               ADD ;
                               DUG 2 } ;
                        DUP 10 ;
                        GET 7 ;
                        DUP 4 ;
                        COMPARE ;
                        LE ;
                        IF {} { PUSH string "PH_INVALID_TOTAL" ; FAILWITH } ;
                        DUP 3 ;
                        DUP 11 ;
                        GET 7 ;
                        SUB ;
                        DUP ;
                        PUSH int 0 ;
                        COMPARE ;
                        LT ;
                        IF { DIG 2 ;
                             DROP ;
                             DIG 2 ;
                             DROP ;
                             DIG 3 ;
                             DROP ;
                             DIG 3 ;
                             DROP ;
                             DIG 3 ;
                             DROP ;
                             DIG 4 ;
                             DROP ;
                             ISNAT ;
                             IF_NONE { PUSH int 95 ; FAILWITH } {} ;
                             DUP 3 ;
                             CDR ;
                             DUP 6 ;
                             CAR ;
                             PAIR 3 ;
                             CONS }
                           { DROP ;
                             SWAP ;
                             DROP ;
                             SWAP ;
                             DROP ;
                             DIG 2 ;
                             DROP ;
                             DIG 2 ;
                             DROP ;
                             DIG 2 ;
                             DROP ;
                             DIG 3 ;
                             DROP } ;
                        DUG 2 ;
                        CAR ;
                        CONTRACT %transfer
                          (list (pair (address %from_)
                                      (list %txs (pair (address %to_) (pair (nat %token_id) (nat %amount)))))) ;
                        IF_NONE { PUSH int 157 ; FAILWITH } {} ;
                        PUSH mutez 0 ;
                        NIL (pair address (list (pair address (pair nat nat)))) ;
                        DIG 4 ;
                        SENDER ;
                        PAIR ;
                        CONS ;
                        TRANSFER_TOKENS ;
                        CONS }
                      { PUSH mutez 0 ;
                        PUSH nat 10000 ;
                        DUP 6 ;
                        PUSH mutez 1 ;
                        DUP 11 ;
                        GET 7 ;
                        MUL ;
                        MUL ;
                        EDIV ;
                        IF_NONE { PUSH int 36 ; FAILWITH } {} ;
                        CAR ;
                        DUP ;
                        PUSH mutez 0 ;
                        COMPARE ;
                        LT ;
                        IF { DIG 6 ;
                             DUP 6 ;
                             CONTRACT unit ;
                             IF_NONE { PUSH int 39 ; FAILWITH } {} ;
                             DUP 3 ;
                             UNIT ;
                             TRANSFER_TOKENS ;
                             CONS ;
                             DUG 6 }
                           {} ;
                        DUP ;
                        DIG 2 ;
                        ADD ;
                        SWAP ;
                        DUP 9 ;
                        GET 11 ;
                        ITER { DUP ;
                               CAR ;
                               PUSH nat 10000 ;
                               SWAP ;
                               PUSH mutez 1 ;
                               DUP 13 ;
                               GET 7 ;
                               MUL ;
                               MUL ;
                               EDIV ;
                               IF_NONE { PUSH int 46 ; FAILWITH } {} ;
                               CAR ;
                               DUP ;
                               PUSH mutez 0 ;
                               COMPARE ;
                               LT ;
                               IF { DIG 8 ;
                                    DIG 2 ;
                                    CDR ;
                                    CONTRACT unit ;
                                    IF_NONE { PUSH int 51 ; FAILWITH } {} ;
                                    DUP 3 ;
                                    UNIT ;
                                    TRANSFER_TOKENS ;
                                    CONS ;
                                    DUG 7 }
                                  { SWAP ; DROP } ;
                               DIG 2 ;
                               ADD ;
                               SWAP } ;
                        SWAP ;
                        DUP ;
                        DUG 2 ;
                        PUSH mutez 1 ;
                        DUP 11 ;
                        GET 7 ;
                        MUL ;
                        SUB_MUTEZ ;
                        ASSERT_SOME ;
                        PUSH mutez 1 ;
                        DUP 11 ;
                        GET 7 ;
                        MUL ;
                        DUP 4 ;
                        COMPARE ;
                        LE ;
                        IF {} { PUSH string "PH_INVALID_TOTAL" ; FAILWITH } ;
                        DUP ;
                        PUSH mutez 0 ;
                        COMPARE ;
                        LT ;
                        IF { SWAP ;
                             DROP ;
                             SWAP ;
                             DROP ;
                             SWAP ;
                             DROP ;
                             SWAP ;
                             DROP ;
                             SWAP ;
                             DROP ;
                             SWAP ;
                             DROP ;
                             DIG 2 ;
                             DROP ;
                             SWAP ;
                             DUP 3 ;
                             CAR ;
                             CONTRACT unit ;
                             IF_NONE { PUSH int 58 ; FAILWITH } {} ;
                             DIG 2 ;
                             UNIT ;
                             TRANSFER_TOKENS ;
                             CONS }
                           { DROP 7 ; SWAP ; DROP } } } ;
                DIG 3 ;
                UNPAIR ;
                UNPAIR ;
                UNPAIR ;
                DUP ;
                DUP 8 ;
                CAR ;
                DUP ;
                DUG 2 ;
                GET ;
                IF_NONE { PUSH int 401 ; FAILWITH } {} ;
                PUSH nat 1 ;
                DIG 8 ;
                GET 9 ;
                SUB ;
                ISNAT ;
                IF_NONE { PUSH int 401 ; FAILWITH } {} ;
                UPDATE 9 ;
                SOME ;
                SWAP ;
                UPDATE ;
                PAIR ;
                PAIR ;
                PAIR ;
                DUG 2 ;
                PUSH nat 0 ;
                DUP 4 ;
                CAR ;
                CAR ;
                CAR ;
                DUP 4 ;
                CAR ;
                GET ;
                IF_NONE { PUSH int 404 ; FAILWITH } {} ;
                GET 9 ;
                COMPARE ;
                EQ ;
                IF { DIG 2 ;
                     UNPAIR ;
                     UNPAIR ;
                     UNPAIR ;
                     NONE (pair address
                                (pair (pair address nat)
                                      (pair (or address (or (pair address nat) unit))
                                            (pair nat
                                                  (pair nat (pair (list (pair nat address)) (pair (option timestamp) (option address)))))))) ;
                     DIG 6 ;
                     CAR ;
                     UPDATE ;
                     PAIR ;
                     PAIR ;
                     PAIR ;
                     SWAP }
                   { SWAP ; DROP } ;
                PAIR } } ;
        Elt 2
            { { UNPAIR ;
                IF_LEFT
                  { IF_LEFT
                      { PUSH int -1 ; FAILWITH }
                      { IF_LEFT { PUSH int -1 ; FAILWITH } {} } }
                  { PUSH int -1 ; FAILWITH } ;
                SWAP ;
                DUP ;
                DUG 2 ;
                GET 5 ;
                UNIT ;
                VIEW "is_paused" bool ;
                IF_NONE { PUSH int 195 ; FAILWITH } {} ;
                IF { PUSH string "UH_PAUSED" ; FAILWITH } {} ;
                SWAP ;
                DUP ;
                DUG 2 ;
                GET 3 ;
                CAR ;
                SWAP ;
                DUP ;
                DUG 2 ;
                CAR ;
                GET ;
                IF_NONE { PUSH int 252 ; FAILWITH } {} ;
                DUP ;
                CAR ;
                SENDER ;
                COMPARE ;
                NEQ ;
                IF {} { PUSH string "M_NO_SELF_FULFILL" ; FAILWITH } ;
                DUP ;
                GET 12 ;
                IF_NONE
                  {}
                  { DROP ;
                    DUP ;
                    GET 12 ;
                    IF_NONE { PUSH int 257 ; FAILWITH } {} ;
                    SENDER ;
                    COMPARE ;
                    EQ ;
                    IF {} { PUSH string "M_ONLY_TARGET" ; FAILWITH } } ;
                DUP ;
                GET 11 ;
                IF_NONE
                  {}
                  { DROP ;
                    DUP ;
                    GET 11 ;
                    IF_NONE { PUSH int 260 ; FAILWITH } {} ;
                    NOW ;
                    COMPARE ;
                    LT ;
                    IF {} { PUSH string "M_EXPIRED" ; FAILWITH } } ;
                DUP ;
                GET 3 ;
                CDR ;
                IF_NONE
                  { SWAP ; DUP ; DUG 2 ; CDR ; IF_NONE { PUSH int 268 ; FAILWITH } {} }
                  { DROP ; DUP ; GET 3 ; CDR ; IF_NONE { PUSH int 266 ; FAILWITH } {} } ;
                NIL operation ;
                DUP 3 ;
                GET 3 ;
                CAR ;
                CONTRACT %transfer
                  (list (pair (address %from_)
                              (list %txs (pair (address %to_) (pair (nat %token_id) (nat %amount)))))) ;
                IF_NONE { PUSH int 127 ; FAILWITH } {} ;
                PUSH mutez 0 ;
                NIL (pair address (list (pair address (pair nat nat)))) ;
                NIL (pair address (pair nat nat)) ;
                PUSH nat 1 ;
                DUP 7 ;
                DUP 9 ;
                CAR ;
                PAIR 3 ;
                CONS ;
                SENDER ;
                PAIR ;
                CONS ;
                TRANSFER_TOKENS ;
                CONS ;
                DUP 5 ;
                GET 7 ;
                UNIT ;
                VIEW "get_default_management_fee" nat ;
                IF_NONE { PUSH int 214 ; FAILWITH } {} ;
                DUP 6 ;
                GET 5 ;
                UNIT ;
                VIEW "get_treasury" address ;
                IF_NONE { PUSH int 171 ; FAILWITH } {} ;
                DUP 7 ;
                GET 7 ;
                DUP 6 ;
                GET 3 ;
                CAR ;
                DUP 7 ;
                GET 5 ;
                PAIR ;
                VIEW "get_override"
                     (pair (option %beneficiary_override address) (option %fee_override nat)) ;
                IF_NONE { PUSH string "Payment token not registered" ; FAILWITH } {} ;
                DUP ;
                CDR ;
                IF_NONE
                  {}
                  { DROP ;
                    DIG 2 ;
                    DROP ;
                    DUP ;
                    CDR ;
                    IF_NONE { PUSH int 285 ; FAILWITH } {} ;
                    DUG 2 } ;
                DUP ;
                CAR ;
                IF_NONE
                  {}
                  { DROP ;
                    SWAP ;
                    DROP ;
                    DUP ;
                    CAR ;
                    IF_NONE { PUSH int 287 ; FAILWITH } {} ;
                    SWAP } ;
                DUP 6 ;
                GET 5 ;
                IF_LEFT
                  { PUSH nat 0 ;
                    PUSH nat 10000 ;
                    DUP 6 ;
                    DUP 10 ;
                    GET 7 ;
                    MUL ;
                    EDIV ;
                    IF_NONE { PUSH int 106 ; FAILWITH } { CAR } ;
                    DUP ;
                    PUSH nat 0 ;
                    COMPARE ;
                    LT ;
                    IF { DIG 6 ;
                         DUP 4 ;
                         CONTRACT %transfer (pair (address %from) (pair (address %to) (nat %value))) ;
                         IF_NONE { PUSH int 184 ; FAILWITH } {} ;
                         PUSH mutez 0 ;
                         DUP 4 ;
                         DUP 9 ;
                         DUP 13 ;
                         CAR ;
                         PAIR 3 ;
                         TRANSFER_TOKENS ;
                         CONS ;
                         DUG 6 }
                       {} ;
                    DUP ;
                    DIG 2 ;
                    ADD ;
                    SWAP ;
                    DUP 9 ;
                    GET 9 ;
                    ITER { DUP ;
                           CAR ;
                           PUSH nat 10000 ;
                           SWAP ;
                           DUP 12 ;
                           GET 7 ;
                           MUL ;
                           EDIV ;
                           IF_NONE { PUSH int 114 ; FAILWITH } { CAR } ;
                           DUP ;
                           PUSH nat 0 ;
                           COMPARE ;
                           LT ;
                           IF { DIG 8 ;
                                DUP 6 ;
                                CONTRACT %transfer (pair (address %from) (pair (address %to) (nat %value))) ;
                                IF_NONE { PUSH int 184 ; FAILWITH } {} ;
                                PUSH mutez 0 ;
                                DUP 4 ;
                                DIG 5 ;
                                CDR ;
                                DUP 14 ;
                                CAR ;
                                PAIR 3 ;
                                TRANSFER_TOKENS ;
                                CONS ;
                                DUG 7 }
                              { SWAP ; DROP } ;
                           DIG 2 ;
                           ADD ;
                           SWAP } ;
                    SWAP ;
                    DUP ;
                    DUG 2 ;
                    DUP 10 ;
                    GET 7 ;
                    SUB ;
                    DUP 10 ;
                    GET 7 ;
                    DUP 4 ;
                    COMPARE ;
                    LE ;
                    IF {} { PUSH string "PH_INVALID_TOTAL" ; FAILWITH } ;
                    DUP ;
                    PUSH int 0 ;
                    COMPARE ;
                    LT ;
                    IF { SWAP ;
                         DROP ;
                         SWAP ;
                         DROP ;
                         DIG 2 ;
                         DROP ;
                         DIG 2 ;
                         DROP ;
                         DIG 2 ;
                         DROP ;
                         DIG 3 ;
                         DROP ;
                         DUG 2 ;
                         CONTRACT %transfer (pair (address %from) (pair (address %to) (nat %value))) ;
                         IF_NONE { PUSH int 184 ; FAILWITH } {} ;
                         PUSH mutez 0 ;
                         DIG 3 ;
                         ISNAT ;
                         IF_NONE { PUSH int 124 ; FAILWITH } {} ;
                         SENDER ;
                         DIG 5 ;
                         CAR ;
                         PAIR 3 ;
                         TRANSFER_TOKENS ;
                         CONS }
                       { DROP 7 ; SWAP ; DROP ; SWAP ; DROP } }
                  { IF_LEFT
                      { PUSH nat 0 ;
                        PUSH nat 10000 ;
                        DUP 6 ;
                        DUP 10 ;
                        GET 7 ;
                        MUL ;
                        EDIV ;
                        IF_NONE { PUSH int 65 ; FAILWITH } { CAR } ;
                        DUP ;
                        PUSH nat 0 ;
                        COMPARE ;
                        LT ;
                        IF { DIG 6 ;
                             DUP 4 ;
                             CAR ;
                             CONTRACT %transfer
                               (list (pair (address %from_)
                                           (list %txs (pair (address %to_) (pair (nat %token_id) (nat %amount)))))) ;
                             IF_NONE { PUSH int 127 ; FAILWITH } {} ;
                             PUSH mutez 0 ;
                             NIL (pair address (list (pair address (pair nat nat)))) ;
                             NIL (pair address (pair nat nat)) ;
                             DUP 6 ;
                             DUP 9 ;
                             CDR ;
                             DUP 12 ;
                             PAIR 3 ;
                             CONS ;
                             DUP 13 ;
                             CAR ;
                             PAIR ;
                             CONS ;
                             TRANSFER_TOKENS ;
                             CONS ;
                             DUG 6 }
                           {} ;
                        DUP ;
                        DIG 2 ;
                        ADD ;
                        SWAP ;
                        NIL (pair address (pair nat nat)) ;
                        DUP 10 ;
                        GET 9 ;
                        ITER { DUP ;
                               CAR ;
                               PUSH nat 10000 ;
                               SWAP ;
                               DUP 13 ;
                               GET 7 ;
                               MUL ;
                               EDIV ;
                               IF_NONE { PUSH int 77 ; FAILWITH } { CAR } ;
                               DUP ;
                               PUSH nat 0 ;
                               COMPARE ;
                               LT ;
                               IF { DIG 2 ;
                                    SWAP ;
                                    DUP ;
                                    DUG 2 ;
                                    DUP 7 ;
                                    CDR ;
                                    DIG 4 ;
                                    CDR ;
                                    PAIR 3 ;
                                    CONS ;
                                    SWAP }
                                  { SWAP ; DROP } ;
                               DIG 3 ;
                               ADD ;
                               DUG 2 } ;
                        DUP 10 ;
                        GET 7 ;
                        DUP 4 ;
                        COMPARE ;
                        LE ;
                        IF {} { PUSH string "PH_INVALID_TOTAL" ; FAILWITH } ;
                        DUP 3 ;
                        DUP 11 ;
                        GET 7 ;
                        SUB ;
                        DUP ;
                        PUSH int 0 ;
                        COMPARE ;
                        LT ;
                        IF { DIG 2 ;
                             DROP ;
                             DIG 2 ;
                             DROP ;
                             DIG 3 ;
                             DROP ;
                             DIG 3 ;
                             DROP ;
                             DIG 3 ;
                             DROP ;
                             DIG 4 ;
                             DROP ;
                             ISNAT ;
                             IF_NONE { PUSH int 95 ; FAILWITH } {} ;
                             DUP 3 ;
                             CDR ;
                             SENDER ;
                             PAIR 3 ;
                             CONS }
                           { DROP ;
                             SWAP ;
                             DROP ;
                             SWAP ;
                             DROP ;
                             DIG 2 ;
                             DROP ;
                             DIG 2 ;
                             DROP ;
                             DIG 2 ;
                             DROP ;
                             DIG 3 ;
                             DROP } ;
                        DUG 2 ;
                        CAR ;
                        CONTRACT %transfer
                          (list (pair (address %from_)
                                      (list %txs (pair (address %to_) (pair (nat %token_id) (nat %amount)))))) ;
                        IF_NONE { PUSH int 157 ; FAILWITH } {} ;
                        PUSH mutez 0 ;
                        NIL (pair address (list (pair address (pair nat nat)))) ;
                        DIG 4 ;
                        DIG 5 ;
                        CAR ;
                        PAIR ;
                        CONS ;
                        TRANSFER_TOKENS ;
                        CONS }
                      { PUSH mutez 0 ;
                        PUSH nat 10000 ;
                        DUP 6 ;
                        PUSH mutez 1 ;
                        DUP 11 ;
                        GET 7 ;
                        MUL ;
                        MUL ;
                        EDIV ;
                        IF_NONE { PUSH int 36 ; FAILWITH } {} ;
                        CAR ;
                        DUP ;
                        PUSH mutez 0 ;
                        COMPARE ;
                        LT ;
                        IF { DIG 6 ;
                             DUP 6 ;
                             CONTRACT unit ;
                             IF_NONE { PUSH int 39 ; FAILWITH } {} ;
                             DUP 3 ;
                             UNIT ;
                             TRANSFER_TOKENS ;
                             CONS ;
                             DUG 6 }
                           {} ;
                        DUP ;
                        DIG 2 ;
                        ADD ;
                        SWAP ;
                        DUP 9 ;
                        GET 9 ;
                        ITER { DUP ;
                               CAR ;
                               PUSH nat 10000 ;
                               SWAP ;
                               PUSH mutez 1 ;
                               DUP 13 ;
                               GET 7 ;
                               MUL ;
                               MUL ;
                               EDIV ;
                               IF_NONE { PUSH int 46 ; FAILWITH } {} ;
                               CAR ;
                               DUP ;
                               PUSH mutez 0 ;
                               COMPARE ;
                               LT ;
                               IF { DIG 8 ;
                                    DIG 2 ;
                                    CDR ;
                                    CONTRACT unit ;
                                    IF_NONE { PUSH int 51 ; FAILWITH } {} ;
                                    DUP 3 ;
                                    UNIT ;
                                    TRANSFER_TOKENS ;
                                    CONS ;
                                    DUG 7 }
                                  { SWAP ; DROP } ;
                               DIG 2 ;
                               ADD ;
                               SWAP } ;
                        SWAP ;
                        DUP ;
                        DUG 2 ;
                        PUSH mutez 1 ;
                        DUP 11 ;
                        GET 7 ;
                        MUL ;
                        SUB_MUTEZ ;
                        ASSERT_SOME ;
                        PUSH mutez 1 ;
                        DUP 11 ;
                        GET 7 ;
                        MUL ;
                        DUP 4 ;
                        COMPARE ;
                        LE ;
                        IF {} { PUSH string "PH_INVALID_TOTAL" ; FAILWITH } ;
                        DUP ;
                        PUSH mutez 0 ;
                        COMPARE ;
                        LT ;
                        IF { SWAP ;
                             DROP ;
                             SWAP ;
                             DROP ;
                             SWAP ;
                             DROP ;
                             SWAP ;
                             DROP ;
                             SWAP ;
                             DROP ;
                             SWAP ;
                             DROP ;
                             DIG 2 ;
                             DROP ;
                             DIG 2 ;
                             DROP ;
                             SWAP ;
                             SENDER ;
                             CONTRACT unit ;
                             IF_NONE { PUSH int 58 ; FAILWITH } {} ;
                             DIG 2 ;
                             UNIT ;
                             TRANSFER_TOKENS ;
                             CONS }
                           { DROP 7 ; SWAP ; DROP ; SWAP ; DROP } } } ;
                DIG 2 ;
                UNPAIR ;
                SWAP ;
                UNPAIR ;
                UNPAIR ;
                NONE (pair address
                           (pair (pair address (option nat))
                                 (pair (or address (or (pair address nat) unit))
                                       (pair nat (pair (list (pair nat address)) (pair (option timestamp) (option address))))))) ;
                DIG 6 ;
                CAR ;
                UPDATE ;
                PAIR ;
                PAIR ;
                SWAP ;
                PAIR ;
                SWAP ;
                PAIR } } ;
        Elt 3
            { { UNPAIR ;
                IF_LEFT
                  { PUSH int -1 ; FAILWITH }
                  { IF_LEFT {} { PUSH int -1 ; FAILWITH } } ;
                SWAP ;
                DUP ;
                DUG 2 ;
                GET 5 ;
                UNIT ;
                VIEW "is_paused" bool ;
                IF_NONE { PUSH int 195 ; FAILWITH } {} ;
                IF { PUSH string "UH_PAUSED" ; FAILWITH } {} ;
                DUP ;
                GET 12 ;
                SENDER ;
                SWAP ;
                IF_NONE
                  {}
                  { DROP 2 ;
                    DUP ;
                    GET 3 ;
                    IF_LEFT
                      { DROP ; PUSH bool False }
                      { IF_LEFT { DROP ; PUSH bool False } { DROP ; PUSH bool True } } ;
                    IF {} { PUSH string "M_PROXY_OFFER_ONLY_TEZ" ; FAILWITH } ;
                    DUP ;
                    GET 12 ;
                    IF_NONE { PUSH int 121 ; FAILWITH } {} } ;
                SWAP ;
                DUP ;
                DUG 2 ;
                GET 3 ;
                IF_LEFT
                  { DROP ;
                    PUSH nat 0 ;
                    DUP 3 ;
                    GET 5 ;
                    COMPARE ;
                    GT ;
                    IF {} { PUSH string "M_MIN_0_FA12" ; FAILWITH } }
                  { IF_LEFT
                      { DROP ;
                        PUSH nat 0 ;
                        DUP 3 ;
                        GET 5 ;
                        COMPARE ;
                        GT ;
                        IF {} { PUSH string "M_MIN_0_FA2" ; FAILWITH } }
                      { DROP ;
                        SWAP ;
                        DUP ;
                        DUG 2 ;
                        GET 5 ;
                        PUSH mutez 1 ;
                        AMOUNT ;
                        EDIV ;
                        IF_NONE { UNIT ; FAILWITH } {} ;
                        CAR ;
                        COMPARE ;
                        EQ ;
                        IF {} { PUSH string "M_TEZ_AMOUNT_MISMATCH" ; FAILWITH } } } ;
                DUP 3 ;
                GET 7 ;
                DIG 2 ;
                DUP ;
                CAR ;
                CAR ;
                SWAP ;
                DUP ;
                DUG 4 ;
                GET 3 ;
                PAIR ;
                VIEW "get_override"
                     (pair (option %beneficiary_override address) (option %fee_override nat)) ;
                IF_NONE { PUSH string "Payment token not registered" ; FAILWITH } {} ;
                DUP ;
                CDR ;
                IF_NONE
                  { PUSH nat 0 ;
                    DUP 4 ;
                    GET 7 ;
                    ITER { CAR ; ADD } ;
                    DUP 5 ;
                    GET 7 ;
                    UNIT ;
                    VIEW "get_default_management_fee" nat ;
                    IF_NONE { PUSH int 214 ; FAILWITH } {} ;
                    PUSH nat 10000 ;
                    SUB ;
                    ISNAT ;
                    IF_NONE { PUSH int 22 ; FAILWITH } {} ;
                    SWAP ;
                    COMPARE ;
                    LE ;
                    IF {} { PUSH string "R_INVALID_SHARES_TOTAL" ; FAILWITH } }
                  { DROP ;
                    PUSH nat 0 ;
                    DUP 4 ;
                    GET 7 ;
                    ITER { CAR ; ADD } ;
                    SWAP ;
                    DUP ;
                    DUG 2 ;
                    CDR ;
                    IF_NONE { PUSH int 136 ; FAILWITH } {} ;
                    PUSH nat 10000 ;
                    SUB ;
                    ISNAT ;
                    IF_NONE { PUSH int 22 ; FAILWITH } {} ;
                    SWAP ;
                    COMPARE ;
                    LE ;
                    IF {} { PUSH string "R_INVALID_SHARES_TOTAL" ; FAILWITH } } ;
                DUP 4 ;
                UNPAIR ;
                SWAP ;
                UNPAIR ;
                UNPAIR ;
                DIG 6 ;
                DUP ;
                GET 11 ;
                SWAP ;
                DUP ;
                GET 9 ;
                SWAP ;
                DUP ;
                GET 7 ;
                SWAP ;
                DUP ;
                GET 5 ;
                SWAP ;
                DUP ;
                GET 3 ;
                SWAP ;
                DUP ;
                DUG 12 ;
                CAR ;
                DUP 12 ;
                PAIR 7 ;
                DIG 5 ;
                DROP ;
                DIG 5 ;
                DROP ;
                DIG 5 ;
                DROP ;
                SOME ;
                DIG 5 ;
                CAR ;
                GET 4 ;
                UPDATE ;
                PAIR ;
                PAIR ;
                SWAP ;
                UNPAIR ;
                SWAP ;
                UNPAIR ;
                SWAP ;
                PUSH nat 1 ;
                ADD ;
                SWAP ;
                PAIR ;
                SWAP ;
                PAIR ;
                PAIR ;
                NIL operation ;
                PAIR } } ;
        Elt 4
            { { UNPAIR ;
                IF_LEFT
                  { PUSH int -1 ; FAILWITH }
                  { IF_LEFT
                      { PUSH int -1 ; FAILWITH }
                      { IF_LEFT {} { PUSH int -1 ; FAILWITH } } } ;
                SWAP ;
                DUP ;
                DUG 2 ;
                GET 5 ;
                UNIT ;
                VIEW "is_paused" bool ;
                IF_NONE { PUSH int 195 ; FAILWITH } {} ;
                IF { PUSH string "UH_PAUSED" ; FAILWITH } {} ;
                SENDER ;
                DUP 3 ;
                CAR ;
                CAR ;
                CAR ;
                DUP 3 ;
                GET ;
                IF_NONE { PUSH int 237 ; FAILWITH } {} ;
                CAR ;
                COMPARE ;
                EQ ;
                IF {} { PUSH string "M_NOT_RETRACTOR" ; FAILWITH } ;
                SWAP ;
                UNPAIR ;
                UNPAIR ;
                UNPAIR ;
                NONE (pair address
                           (pair (pair address nat)
                                 (pair (or address (or (pair address nat) unit))
                                       (pair nat
                                             (pair nat (pair (list (pair nat address)) (pair (option timestamp) (option address)))))))) ;
                DIG 5 ;
                UPDATE ;
                PAIR ;
                PAIR ;
                PAIR ;
                NIL operation ;
                PAIR } } ;
        Elt 5
            { { UNPAIR ;
                IF_LEFT
                  { PUSH int -1 ; FAILWITH }
                  { IF_LEFT
                      { PUSH int -1 ; FAILWITH }
                      { IF_LEFT { PUSH int -1 ; FAILWITH } {} } } ;
                SWAP ;
                DUP ;
                DUG 2 ;
                GET 5 ;
                UNIT ;
                VIEW "is_paused" bool ;
                IF_NONE { PUSH int 195 ; FAILWITH } {} ;
                IF { PUSH string "UH_PAUSED" ; FAILWITH } {} ;
                SWAP ;
                DUP ;
                DUG 2 ;
                GET 3 ;
                CAR ;
                SWAP ;
                DUP ;
                DUG 2 ;
                GET ;
                IF_NONE { PUSH int 220 ; FAILWITH } {} ;
                DUP ;
                GET 11 ;
                IF_NONE
                  { DUP ;
                    CAR ;
                    SENDER ;
                    COMPARE ;
                    EQ ;
                    IF {} { PUSH string "M_NOT_RETRACTOR" ; FAILWITH } }
                  { DROP ;
                    DUP ;
                    CAR ;
                    SENDER ;
                    COMPARE ;
                    EQ ;
                    IF { PUSH bool True }
                       { DUP ;
                         GET 11 ;
                         IF_NONE { PUSH int 224 ; FAILWITH } {} ;
                         NOW ;
                         COMPARE ;
                         GT } ;
                    IF {} { PUSH string "M_NOT_RETRACTOR" ; FAILWITH } } ;
                DUP ;
                GET 5 ;
                IF_LEFT
                  { DROP ; PUSH bool False }
                  { IF_LEFT { DROP ; PUSH bool False } { DROP ; PUSH bool True } } ;
                IF { DUP ;
                     GET 7 ;
                     PUSH nat 0 ;
                     COMPARE ;
                     LT ;
                     IF { DUP ;
                          CAR ;
                          CONTRACT unit ;
                          IF_NONE { PUSH int 231 ; FAILWITH } {} ;
                          NIL operation ;
                          SWAP ;
                          PUSH mutez 1 ;
                          DIG 3 ;
                          GET 7 ;
                          MUL ;
                          UNIT ;
                          TRANSFER_TOKENS ;
                          CONS }
                        { DROP ; NIL operation } }
                   { DROP ; NIL operation } ;
                DIG 2 ;
                UNPAIR ;
                SWAP ;
                UNPAIR ;
                UNPAIR ;
                NONE (pair address
                           (pair (pair address (option nat))
                                 (pair (or address (or (pair address nat) unit))
                                       (pair nat (pair (list (pair nat address)) (pair (option timestamp) (option address))))))) ;
                DIG 6 ;
                UPDATE ;
                PAIR ;
                PAIR ;
                SWAP ;
                PAIR ;
                SWAP ;
                PAIR } } })' --burn-cap 10 --force > data/marketplace_deploy.txt
marketplace_contract=$(sed -n '/^.*New[[:space:]]contract[[:space:]]\{1,\}\([-_[:alnum:]]\{1,\}\).*$/s//\1/p' data/marketplace_deploy.txt)
echo $marketplace_contract