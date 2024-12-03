resource "tls_private_key" "key_pair" {
  algorithm = "RSA"
  //NOTE: 기본은 2048, 4096을 사용 시 보안 강화 (처리 비용이 증가하나 큰 차이는 없음)
  rsa_bits = 4096
}

resource "aws_key_pair" "key_pair" {
  key_name   = var.name
  public_key = tls_private_key.key_pair.public_key_openssh
}
