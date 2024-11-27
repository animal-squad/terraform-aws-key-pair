# terraform-aws-key-pair
AWS key pair 생성을 위한 terraform 모듈

### PEM key 저장 위치

- key pair 생성 후 PEM key를 저장하기 위해 vault를 사용합니다.
- 따라서 TFC에 vault 서버 url, token, key_pair 저장 위치를 설정 후 사용해주시기 바랍니다.