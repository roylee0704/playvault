storage "inmem" {}

listener "tcp" {
	address = "127.0.0.1:8888"
	tls_disable = 1
}
