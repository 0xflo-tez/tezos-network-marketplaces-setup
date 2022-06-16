echo "Setting up objkt.com contracts"

mkdir -p data
echo "Downloading contract codes..."
echo "- Downloading OBJKT Permission module..."
tezos-client -E https://mainnet.smartpy.io get contract code for KT1DF2c7VUED7W3h5BnqUKdB87Ke7XdCjQiY > data/objkt_permission_module.tz
echo "--> Downloaded OBJKT Permission module"
echo "- Downloading OBJKT Marketplace..."
tezos-client -E https://mainnet.smartpy.io get contract code for KT1WvzYHCNBvDSdwafTHv7nJ1dWmZ8GCYuuC > data/objkt_marketplace.tz
echo "--> Downloaded OBJKT Marketplace"
echo "- Downloading OBJKT Token Registry..."
tezos-client -E https://mainnet.smartpy.io get contract code for KT1Pbj1uKjxZJLHyoQ2YUs4kukjvLJdheyfU > data/objkt_token_registry.tz
echo "--> Downloaded OBJKT Marketplace"

echo
echo "Deploying OBJKT Permission module"
tezos-client -E http://localhost:8732 originate contract objkt_permission_module transferring 0 from bootstrap0 running data/objkt_permission_module.tz --init '"'$ADMIN_ADDRESS'"' --burn-cap 1.8225 --force > data/permission_module_deploy.txt
permission_module_contract=$(sed -n '/^.*New[[:space:]]contract[[:space:]]\{1,\}\([-_[:alnum:]]\{1,\}\).*$/s//\1/p' data/permission_module_deploy.txt)
echo $permission_module_contract

echo "Deploying OBJKT Token contract"
tezos-client -E http://localhost:8732 originate contract objkt_token_registry transferring 0 from bootstrap0 running data/objkt_token_registry.tz --init '(Pair (Pair {} (Pair 250 {})) (Pair (Pair {} {}) (Pair "'$permission_module_contract'" (Pair None None))))' --burn-cap 1.8225 --force > data/token_registry_deploy.txt
token_registry_contract=$(sed -n '/^.*New[[:space:]]contract[[:space:]]\{1,\}\([-_[:alnum:]]\{1,\}\).*$/s//\1/p' data/token_registry_deploy.txt)
echo $token_registry_contract

echo "Deploying OBJKT Marketplace contract"
tezos-client -E http://localhost:8732 originate contract objkt_marketplace_test transferring 0 from bootstrap0 running data/objkt_marketplace.tz --init '(Pair (Pair (Pair (Pair {} {}) (Pair 0 0)) (Pair (Pair {} False) (Pair "'$permission_module_contract'" (Pair "'$token_registry_contract'" False)))) {})' --burn-cap 1.8225 --force > data/marketplace_deploy.txt
marketplace_contract=$(sed -n '/^.*New[[:space:]]contract[[:space:]]\{1,\}\([-_[:alnum:]]\{1,\}\).*$/s//\1/p' data/marketplace_deploy.txt)
echo $marketplace_contract
