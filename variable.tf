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
