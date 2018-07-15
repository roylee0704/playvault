path "secret/foo" {
    capabilities = ["read"]
}

path "secret/*" {
    capabilities = ["create", "read", "update", "delete", "list"]
}