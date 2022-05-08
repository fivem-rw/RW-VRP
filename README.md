# RW-VRP
리얼월드 VRP 업데이트 지원 버전 입니다.<br>
기존 VRP의 복잡성을 해소하고 소스를 재구성 합니다.

- 테스트 서버: "connect https://s-vrp.realw.kr"

### 디렉토리 구조
```diff
+ assets
서버 구동 데이터 및 이미지

+ cache
서버 캐시 파일

+ configs
서버 설정 파일

+ core
FXServer 코어 파일

+ ext
서버 부가 유틸리티
  + ext/db
  서버 DB 백업
  + ext/node
  서버 node 스크립트
  + ext/rw-ui
  서버 UI 소스

+ logs
서버 로그 파일

+ starter
서버 스타터 스크립트

+ resources
서버 리소스 파일
  + resources/[VRP]
    VRP 리소스
  + resources/[scripts]
    일반 스크립트
  + resources/[static]
    이미지 또는 바이너리 데이터
```

### 설치

```
configs/default/development.default.cfg
configs/default/production.default.cfg

파일을

configs/development.cfg
configs/production.cfg

위와 같이 복사 후 설정 파일 내용을 수정합니다.
```
