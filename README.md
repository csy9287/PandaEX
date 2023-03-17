# :panda_face: PANDA
근거리 중고 거래 및 기부 경매 사이트 PANDA
* 배포된 주소 : http://itwillbs2.cafe24.com/main/index

## 목차
1. [프로젝트 소개](#프로젝트-소개)
2. [기술 스택](#기술-스택)
3. [프로젝트 화면](#프로젝트-화면)
4. [구현 목록](#구현-목록)

## 프로젝트 소개
* 판매자가 쉽게 물건을 올리고 판매하도록 '판매하다'는 의미를 담은 PANDA!<br/> 근거리 중고 거래 사이트로 경매 형태의 기부 기능이 있는 것이 특징
* 제작기간 : 2022-12-19 ~ 2023-01-16
* 참여인원 : 7명
* 맡은 역할
- [X] 기부 경매 상품 등록/수정/삭제
- [X] 기부 경매 상품 리스트
- [X] 기부 경매 상품 상세페이지
- [X] PPT 제작
  
## 기술 스택
* Spring
* MyBatis
* Java 11
* JSP
* Javascript
* Jsoup
* JQuery
* HTML5
* CSS3
* MySQL

## 프로젝트 화면
![image](https://user-images.githubusercontent.com/77379794/225936590-175bbedb-a88c-47c5-b473-a0931be0a4e9.PNG)
![image](https://user-images.githubusercontent.com/77379794/225936611-57f5ad6e-f291-4448-813a-9624f065e739.PNG)
![image](https://user-images.githubusercontent.com/77379794/225936617-87976c06-1df8-401d-8f50-6a8a0c1aaf62.PNG)
![image](https://user-images.githubusercontent.com/77379794/225936624-7ff83d5d-94d7-4af8-9684-22c39f1e4fe2.PNG)
![image](https://user-images.githubusercontent.com/77379794/225936637-f3e7c42f-c23e-4203-bb26-ccbe1380699b.PNG)
![image](https://user-images.githubusercontent.com/77379794/225936810-8ee3398e-daab-4e80-b850-47dbdf0d7faf.PNG)
![image](https://user-images.githubusercontent.com/77379794/225936824-50380ac3-f1d0-4894-af39-f0125057381b.PNG)
![image](https://user-images.githubusercontent.com/77379794/225936830-770d1359-2300-4a52-b8a1-22857fa3f9f2.PNG)
![image](https://user-images.githubusercontent.com/77379794/225936840-91a5ffd2-d644-4758-a78a-eb962e5949a0.PNG)
![image](https://user-images.githubusercontent.com/77379794/225936847-23eccc9e-d49c-4da6-9ac2-90d18d91d301.PNG)

## 구현 목록
* 메인
- [X] 챗봇
- [X] 랜덤 상품 추천
* 회원
- [X] 카카오API를 사용한 로그인
- [X] 회원가입
- [X] 아이디찾기
- [X] 비밀번호찾기
* 마이페이지
- [X] 회원정보 조회/수정/탈퇴
- [X] 카카오페이API를 사용한 판다페이 충전
- [X] 판다페이 충전내역 조회
* 중고상품
- [X] 중고상품 등록/수정/삭제
- [X] 중고상품 조회
- [X] 중고상품 상세정보 및 판매자정보 조회
- [X] 데이터필터를 활용한 중고상품 정렬
- [X] 중고상품 텍스트 검색
- [X] 사용자 위치 조회
- [X] 웹소켓 채팅을 사용한 판매자와 1:1 채팅
- [X] 카카오페이API를 사용한 판다페이 충전 및 결제
* 기부경매
- [X] 기부 경매 상품 등록/수정/삭제
- [X] 기부 경매 상품 조회
- [X] 기부 경매 상품 찜/해제
- [X] 기부 경매 상품 상세정보 및 판매자정보 조회
- [X] 데이터필터를 활용한 기부 경매 상품 정렬
- [X] 기부 경매 상품 텍스트 검색
- [X] 총 낙찰 인원 및 금액을 해피판다 기부금으로 연동
- [X] 입찰 성공 시 입찰 건수와 현재 입찰가 업데이트
- [X] 실시간 타이머를 적용하여 경매 남은 시간 표시
- [X] 웹소켓 채팅을 사용한 판매자와 1:1 채팅
- [X] 판매자 신고하기
* 관리자
- [X] 게시판 글 등록/수정/삭제
- [X] 게시판 글 카테고리별 정렬
- [X] 일반/블랙회원 관리
