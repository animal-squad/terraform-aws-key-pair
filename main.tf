resource "tls_private_key" "key_pair" {
  algorithm = "RSA"
  //NOTE: 기본은 2048, 4096을 사용 시 보안 강화 (처리 비용이 증가하나 큰 차이는 없음)
  rsa_bits = 4096
}

resource "aws_key_pair" "key_pair" {
  key_name   = var.name
  public_key = tls_private_key.key_pair.public_key_openssh
}

provider "vault" {
  address = var.vault_address
  token   = var.vault_token
}

resource "vault_generic_secret" "key_pair" {
  path = var.vault_key_pair_path

  data_json = jsonencode({
    private_key = tls_private_key.example.private_key_pem
  })
}
