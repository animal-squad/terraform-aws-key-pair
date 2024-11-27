/*
  key pair 설정
*/

variable "name" {
  description = "key pair의 이름"
  type        = string

  validation {
    condition     = length(var.name) <= 50
    error_message = "이름은 50자를 넘을 수 없습니다."
  }
}

/*
  vault 설정
*/

variable "vault_address" {
  description = "vault 서버 URL"
  type        = string

  validation {
    condition     = var.vault_address != null && var.vault_address != ""
    error_message = "vault_address는 TFC를 통해 가져오므로 입력할 필요가 없습니다."
  }
}

variable "vault_token" {
  description = "vault 접근 인증에 사용할 토큰"
  type        = string

  validation {
    condition     = var.vault_token != null && var.vault_token != ""
    error_message = "vault_token는 TFC를 통해 가져오므로 입력할 필요가 없습니다."
  }
}

variable "vault_key_pair_path" {
  description = "vault 서버 내 key pair를 저장할 위치"
  type        = string

  validation {
    condition     = var.vault_key_pair_path != null && var.vault_key_pair_path != ""
    error_message = "vault_key_pair_path는 TFC를 통해 가져오므로 입력할 필요가 없습니다."
  }
}
