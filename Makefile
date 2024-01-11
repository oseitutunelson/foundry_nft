-include .env

NETWORK_ARGS := --rpc-url http://localhost:8545 --private-key $(Private_key) --broadcast

ifeq ($(findstring --network sepolia,$(ARGS)),--network sepolia)
	NETWORK_ARGS := --rpc-url $(SEPOLIA_API_KEY) --private-key $(PRIVATE_KEY) --broadcast --verify --etherscan-api-key $(ETHERSCAN_API) -vvvv
endif


deploy:
	@forge script script/DeployNft.s.sol:DeployNft $(NETWORK_ARGS)
	
mint:
	@forge script script/interaction.s.sol:MintNftOnContract ${NETWORK_ARGS}
