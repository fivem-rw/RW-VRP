```diff
- 해당 프로젝트는 중단된 프로젝트입니다.
```

# RW-VRP
리얼월드 VRP 업데이트 지원 버전 입니다.<br>
기존 VRP의 복잡성을 해소하고 소스를 재구성 합니다.

- 테스트 서버: "connect https://s-vrp.realw.kr"

### 주요 특징
```css
1. LUA 메타테이블을 활용한 소스코드의 클래스화로 객체지향 프로그래밍을 지원합니다.
2. DB연결 모듈 oxmysql 이 기본으로 적용됩니다.
3. 서버의 재부팅없이 모든 VRP 관련 리소스들의 재시작을 지원합니다.
4. 기존 VRP 스크립트와의 호환성을 유지합니다.
5. 컨버팅없이 ESX 소스코드를 그대로 사용할 수 있는 미들웨어가 지원됩니다.
6. RW-Builder를 활용한 리소스 병합이 지원됩니다.
```

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
