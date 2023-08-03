--한줄주석
/* 범위주석
 * 
 * 
 * 
 * */


-- 새 사용자 계정 생성 구문 오류 발생 시
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

-- 새로운 사용자 계정 생성 (sys as sysdba 으로 진행)
CREATE USER kh IDENTIFIED BY kh1234;

-- 사용자 계정 권한 부여 설정
GRANT RESOURCE, CONNECT TO kh;

-- 객체가 생성될 수 있는 공간 할당량 지정
ALTER USER kh DEFAULT TABLESPACE SYSTEM QUOTA UNLIMITED ON SYSTEM;