# Fast API

## 개요

- fastApi - python으로 api 서버를 만드는 웹 프레임워크
- API - application programming interface
- 사용자(클라이언트)가 웹, 모바일, 앱에서 요청을 하면 fastapi 서버가 요청을 철, 결과를 돌려줌
- JSON - 타입(파이썬 딕셔너리와 유사)으로 결과 리턴
- 예

```plaintext
사용자(클라이언트)
-> get / students 요청
-> fastapi 서버에서 db를 조회
-> 학생목록 결과 json 응답
```

- 클라이언트(요청 request) -> 서버(응답 response)

### FastApi 특징

- python 문법으로 api를 만들 수 있음
- 코드가 간결하다
- 실행 속도가 빠르다
- 테스트를 위한 UI를 자동으로 만들어 줌
- Pydantic을 사용, 요청과 응답 데이터를 검증할 수 있다
- postgreSQL, Mysql, Oracle 등 DB와 연동이 쉽다

### API 서버

클라이언트 요청을 받아 필요한 작업을 수행, 그 결과를 클라이언트에게 돌려주는 프로그램

### 개발환경 설정

#### fastapi 패키지 설정

```bash
pip install fastapi uvicorn
```

```
- 현재 파이썬에 fastapi와 uvicorn 패키지를 설치
fastapi 개발 가능
```

pip list

- 패키지 설치 확인

### 기초 FastAPi 서버

- 소스 작성
- vscode 재시작

### 문제해결

- 설치한 uvicorn.exe 위치가 python 설치 위치와 다르다
- C:\Users\User\AppData\Roaming\Python\Python314\Scripts
- 윈도우 검색- 시스템 속성 (sysdm.cpl) 실행
- ![](assets/20260918_164434_image.png)
- 시스템변수에 path에서 주소를 확인
- ![](assets/20260918_164729_image.png)

더블클릭해서 경로를 넣어줘야된다. - 확인 -확인 -확인

- 시스템 변수내 path 상세에서 파이썬 경로 추가 - 확인 - vscode, 터미널 재시작
- uvicorn은 파이썬으로 만든 웹 애플리케이션을 브라우저나 외부에서 접속 할 수 있도록 서버를 띄워주는 초고속 웹 서버 프로그램

### fastapi 서버시작

```bash
uvicorn main.app --reload --port 8000
```

- --reload : 수정되면 곧바로 반영되어서 서버 재시작
- --port 8000 : 서버를 시작할 포트 지정
- http://127.0.0.1:8000 메시지 확인

  - 127.0.0.1-> localhost
  - ![](assets/20260918_170850_image.png)
