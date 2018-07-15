## to start an server instant with config file

start:
	vault server -config config.hcl

client-init:
	VAULT_ADDR='http://localhost:8888' vault operator init -key-shares=3 -key-threshold=2

client-unseal:
	VAULT_ADDR='http://localhost:8888' vault operator unseal # with unseal-key(s)

client-login: 
	VAULT_ADDR='http://localhost:8888' vault login # with token

#client-write:
#	VAULT_ADDR='http://localhost:8888' vault write path/to/key value=xyz

#client-read:
#	VAULT_ADDR='http://localhost:8888' vault read path/to/key

#client-list: GET http://localhost:8888/v1/secret?list=true
#	VAULT_ADDR='http://localhost:8888' vault list secret

client-new-policy:
	VAULT_ADDR='http://localhost:8888' vault policy write policy1 policy.hcl

client-new-token:
	VAULT_ADDR='http://localhost:8888' vault token create -policy=policy1