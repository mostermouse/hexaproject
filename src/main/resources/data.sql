--수정 전 내용 지우기
--drop foreign keys, sequences, tables
ALTER TABLE dependents DROP CONSTRAINT fk_dependent_emplyee;
ALTER TABLE degree DROP CONSTRAINT fk_degree_employee;
ALTER TABLE career DROP CONSTRAINT fk_career_employee;
ALTER TABLE military_service DROP CONSTRAINT fk_military_employee;
ALTER TABLE certification DROP CONSTRAINT fk_certification_employee;
ALTER TABLE language_ability DROP CONSTRAINT fk_language_employee;
ALTER TABLE training DROP CONSTRAINT fk_training_employee;
ALTER TABLE reward_penalty DROP CONSTRAINT fk_reward_penalty_employee;
ALTER TABLE appointment DROP CONSTRAINT fk_appointment_employee;
ALTER TABLE referrer DROP CONSTRAINT fk_referrer_employee;
ALTER TABLE insurance DROP CONSTRAINT fk_insurance_employee;
ALTER TABLE guarantor DROP CONSTRAINT fk_guarantor_employee;
ALTER TABLE retirement DROP CONSTRAINT fk_retirement_employee;
ALTER TABLE employee_salary_account DROP CONSTRAINT fk_account_employee;
ALTER TABLE wage DROP CONSTRAINT fk_wage_employee;
ALTER TABLE wage DROP CONSTRAINT fk_wage_type_id;
ALTER TABLE attendance DROP CONSTRAINT fk_attendance_employee;
ALTER TABLE attendance_type DROP CONSTRAINT fk_attendance_type_group;
ALTER TABLE attendance_type DROP CONSTRAINT fk_attendance_type_vacation;
ALTER TABLE vacation_days DROP CONSTRAINT fk_vacation_days_employee;
ALTER TABLE vacation_days DROP CONSTRAINT fk_vacation_days_type;
ALTER TABLE employee DROP CONSTRAINT fk_employee_department;
ALTER TABLE employee DROP CONSTRAINT fk_employee_position;

DROP TABLE dependents;
DROP TABLE degree;
DROP TABLE career;
DROP TABLE military_service;
DROP TABLE certification;
DROP TABLE language_ability;
DROP TABLE training;
DROP TABLE reward_penalty;
DROP TABLE appointment;
DROP TABLE referrer;
DROP TABLE insurance;
DROP TABLE guarantor;
DROP TABLE retirement;
DROP TABLE employee_salary_account;
DROP TABLE wage;
DROP TABLE wage_type;
DROP TABLE attendance;
DROP TABLE attendance_group;
DROP TABLE attendance_type;
DROP TABLE vacation_days;
DROP TABLE vacation_type;
DROP TABLE employee;
DROP TABLE department;
DROP TABLE position;

DROP SEQUENCE employee_seq;
DROP SEQUENCE dependents_seq;
DROP SEQUENCE education_seq;
DROP SEQUENCE career_seq;
DROP SEQUENCE military_service_seq;
DROP SEQUENCE certification_seq;
DROP SEQUENCE language_ability_seq;
DROP SEQUENCE training_seq;
DROP SEQUENCE rewardPenalty_seq;
DROP SEQUENCE appointment_seq;
DROP SEQUENCE referrer_seq;
DROP SEQUENCE insurance_seq;
DROP SEQUENCE guarantor_seq;
DROP SEQUENCE retirement_seq;
DROP SEQUENCE issue_registry_seq;
DROP SEQUENCE wage_seq;
DROP SEQUENCE wage_type_seq;
DROP SEQUENCE attendance_seq;
DROP SEQUENCE attendance_group_seq;
DROP SEQUENCE attendance_type_seq;
DROP SEQUENCE vacation_type_seq;
DROP SEQUENCE vacation_days_seq;
DROP SEQUENCE department_seq;
DROP SEQUENCE position_seq;

--수정 후(일용직 현장/프로젝트 테이블 추가)
--drop foreign keys, sequences, tables
ALTER TABLE dependents DROP CONSTRAINT fk_dependent_emplyee;
ALTER TABLE degree DROP CONSTRAINT fk_degree_employee;
ALTER TABLE career DROP CONSTRAINT fk_career_employee;
ALTER TABLE military_service DROP CONSTRAINT fk_military_employee;
ALTER TABLE certification DROP CONSTRAINT fk_certification_employee;
ALTER TABLE language_ability DROP CONSTRAINT fk_language_employee;
ALTER TABLE training DROP CONSTRAINT fk_training_employee;
ALTER TABLE reward_penalty DROP CONSTRAINT fk_reward_penalty_employee;
ALTER TABLE appointment DROP CONSTRAINT fk_appointment_employee;
ALTER TABLE referrer DROP CONSTRAINT fk_referrer_employee;
ALTER TABLE insurance DROP CONSTRAINT fk_insurance_employee;
ALTER TABLE guarantor DROP CONSTRAINT fk_guarantor_employee;
ALTER TABLE retirement DROP CONSTRAINT fk_retirement_employee;
ALTER TABLE employee_salary_account DROP CONSTRAINT fk_account_employee;
ALTER TABLE wage DROP CONSTRAINT fk_wage_employee;
ALTER TABLE wage DROP CONSTRAINT fk_wage_type_id;
ALTER TABLE attendance DROP CONSTRAINT fk_attendance_employee;
ALTER TABLE attendance DROP CONSTRAINT fk_attendance_feild;
ALTER TABLE attendance_type DROP CONSTRAINT fk_attendance_type_group;
ALTER TABLE attendance_type DROP CONSTRAINT fk_attendance_type_vacation;
ALTER TABLE vacation_days DROP CONSTRAINT fk_vacation_days_employee;
ALTER TABLE vacation_days DROP CONSTRAINT fk_vacation_days_type;
ALTER TABLE employee DROP CONSTRAINT fk_employee_department;
ALTER TABLE employee DROP CONSTRAINT fk_employee_position;

DROP TABLE dependents;
DROP TABLE degree;
DROP TABLE career;
DROP TABLE military_service;
DROP TABLE certification;
DROP TABLE language_ability;
DROP TABLE training;
DROP TABLE reward_penalty;
DROP TABLE appointment;
DROP TABLE referrer;
DROP TABLE insurance;
DROP TABLE guarantor;
DROP TABLE retirement;
DROP TABLE employee_salary_account;
DROP TABLE wage;
DROP TABLE wage_type;
DROP TABLE attendance;
DROP TABLE feild_or_project;
DROP TABLE attendance_group;
DROP TABLE attendance_type;
DROP TABLE vacation_days;
DROP TABLE vacation_type;
DROP TABLE employee;
DROP TABLE department;
DROP TABLE position;
drop table company_info;
drop table contact_person_info;
drop sequence company_seq;
DROP SEQUENCE employee_seq;
DROP SEQUENCE dependents_seq;
DROP SEQUENCE education_seq;
DROP SEQUENCE career_seq;
DROP SEQUENCE military_service_seq;
DROP SEQUENCE certification_seq;
DROP SEQUENCE language_ability_seq;
DROP SEQUENCE training_seq;
DROP SEQUENCE rewardPenalty_seq;
DROP SEQUENCE appointment_seq;
DROP SEQUENCE referrer_seq;
DROP SEQUENCE insurance_seq;
DROP SEQUENCE guarantor_seq;
DROP SEQUENCE retirement_seq;
DROP SEQUENCE issue_registry_seq;
DROP SEQUENCE wage_seq;
DROP SEQUENCE wage_type_seq;
DROP SEQUENCE attendance_seq;
DROP SEQUENCE attendance_group_seq;
DROP SEQUENCE feild_or_project_seq;
DROP SEQUENCE attendance_type_seq;
DROP SEQUENCE vacation_type_seq;
DROP SEQUENCE vacation_days_seq;
DROP SEQUENCE department_seq;
DROP SEQUENCE position_seq;
drop sequence contart_seq;
drop sequence salary_account_seq;
commit ;
-----------------------------------------------------------------------------------------------------------------------------------------------------
--sequences
create sequence contart_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

CREATE SEQUENCE company_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

create sequence salary_account_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

CREATE SEQUENCE employee_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;

CREATE SEQUENCE dependents_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;

CREATE SEQUENCE degree_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

CREATE SEQUENCE education_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;

CREATE SEQUENCE career_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;

CREATE SEQUENCE military_service_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;

CREATE SEQUENCE certification_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;

CREATE SEQUENCE language_ability_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;

CREATE SEQUENCE training_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;

CREATE SEQUENCE rewardPenalty_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;

CREATE SEQUENCE appointment_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;

CREATE SEQUENCE referrer_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;

CREATE SEQUENCE insurance_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;

CREATE SEQUENCE guarantor_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;

CREATE SEQUENCE retirement_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;

CREATE SEQUENCE issue_registry_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;

CREATE SEQUENCE wage_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;
  
CREATE SEQUENCE wage_type_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;

CREATE SEQUENCE attendance_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;
  
CREATE SEQUENCE attendance_group_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;

CREATE SEQUENCE feild_or_project_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;

CREATE SEQUENCE attendance_type_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;

CREATE SEQUENCE vacation_type_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;

CREATE SEQUENCE vacation_days_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;
  
CREATE SEQUENCE department_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;
  
CREATE SEQUENCE position_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;
  
-----------------------------------------------------------------------------------------------------------------------------------------------------
--tables
-- 회사 정보를 저장하는 테이블
CREATE TABLE company_info (
                              company_id            NUMBER PRIMARY KEY,
                              company_name          VARCHAR2(100) NOT NULL,
                              representative_title  VARCHAR2(50),
                              representative_name   VARCHAR2(50),
                              business_number       VARCHAR2(50),
                              corporation_number    VARCHAR2(50),
                              establishment_date    DATE,
                              website               VARCHAR2(100),
                              office_address        VARCHAR2(200),
                              phone_number          VARCHAR2(20),
                              fax_number            VARCHAR2(20),
                              business_type         VARCHAR2(50),
                              business_item         VARCHAR2(50)
);

-- 담당자 정보를 저장하는 테이블
CREATE TABLE contact_person_info (
                                     person_id        NUMBER PRIMARY KEY,
                                     company_id       NUMBER,
                                     contact_name             VARCHAR2(50) NOT NULL,
                                     department_id       number,
                                     position_id         number,
                                     con_phone_number     VARCHAR2(20),
                                     mobile_number    VARCHAR2(20),
                                     email            VARCHAR2(100)

);
c
-- 사원등록 할때 기본급여/계좌 입력받는 테이블
CREATE TABLE employee_salary_account (
                                         account_id NUMBER PRIMARY KEY,
                                         company_id number,

                                           -- 직원 ID (외래 키)
                                         bank_name VARCHAR2(100),  -- 은행 이름
                                         account_number VARCHAR2(100),  -- 계좌 번호
                                         deposit_stocks varchar2(100), --예금주
                                         salary_calculation1 Date,
                                         salary_calculation2 Date,
                                         salary_payment_date Date

);


-- 직원 정보를 저장하는 테이블
CREATE TABLE employee (
                          account_id NUMBER,
                          company_id number,
                          person_id number,--

                          employee_id Number PRIMARY KEY,  -- 직원 ID
                          employment_type VARCHAR2(100),  -- 고용 형태 (정규직 계약직 임시직 일용직)
                          korean_name VARCHAR2(100),  -- 한글 이름
                          english_name VARCHAR2(100),  -- 영문 이름
                          hire_date DATE,  -- 입사일
                          resignation_date DATE,  -- 퇴사일
                          department_id NUMBER,  -- 소속 부서(외래 키)
                          position_id NUMBER,  -- 직급 또는 직책(외래 키)
                          foreign_or_domestic VARCHAR2(20),  -- 국내 또는 외국인
                          resident_number1 VARCHAR2(20),  -- 주민등록번호
                          resident_number2 VARCHAR2(20),  -- 주민등록번호
                          address VARCHAR2(200),  -- 주소
                          tel_phone VARCHAR2(20),  -- 전화번호
                          mobile VARCHAR2(20),  -- 휴대전화번호
                          email VARCHAR2(100),  -- 이메일 주소
                          sns VARCHAR2(100),  -- SNS 계정
                          other_details VARCHAR2(4000),  -- 기타 상세 정보
                          status VARCHAR2(20)  -- 상태 (재직중, 퇴사) true/false로 할까?
);

-- 직원의 부양 가족 정보를 저장하는 테이블
CREATE TABLE dependents (
                            dependent_id NUMBER PRIMARY KEY,  -- 부양 가족 ID
                            employee_id Number,  -- 직원 ID (외래 키)
                            relationship VARCHAR2(100),  -- 관계
                            parents_name VARCHAR2(100),  -- 이름
                            foreign_or_domestic1 VARCHAR2(20),  -- 국내 또는 외국인
                            parents_number1 VARCHAR2(20),  -- 가족 주민등록번호 1
                            parents_number2 VARCHAR2(20)  -- 가족 주민등록번호 2

);

-- 직원의 학력 정보를 저장하는 테이블
CREATE TABLE degree (
                        degree_id NUMBER PRIMARY KEY,  -- 교육 정보 ID
                        employee_id Number,  -- 직원 ID (외래 키)
                        graduate VARCHAR2(100),  -- 최종학력
                        admission_date DATE,  -- 입학일
                        graduation_date DATE,  -- 졸업일
                        school_name VARCHAR2(200),  -- 학교 이름
                        major VARCHAR2(100),  -- 전공
                        completion VARCHAR2(10)  -- 졸업 여부

);

-- 직원의 경력 정보를 저장하는 테이블
CREATE TABLE career (
                        career_id NUMBER PRIMARY KEY,  -- 경력 정보 ID
                        employee_id number,  -- 직원 ID (외래 키)
                        company_name VARCHAR2(200),  -- 회사 이름
                        start_date DATE,  -- 입사일
                        end_date DATE,  -- 퇴사일
                        employment_period VARCHAR2(100),  -- 근무 기간
                        final_position VARCHAR2(100),  -- 최종 직위
                        responsibilities VARCHAR2(4000),  -- 업무 내용
                        reason_for_resignation VARCHAR2(4000) -- 퇴사 사유

);

-- 직원의 군 복무 정보를 저장하는 테이블
CREATE TABLE military_service (
                                  military_service_id NUMBER PRIMARY KEY,  -- 군 복무 정보 ID
                                  employee_id number,  -- 직원 ID (외래 키)
                                  service_type VARCHAR2(100),  -- 복무 유형
                                  branch VARCHAR2(100),  -- 군 지류
                                  service_period1 DATE,  -- 복무 기간
                                  service_period2 DATE,  -- 복무 기간
                                  final_rank VARCHAR2(100),  -- 최종 계급
                                  department1 VARCHAR2(100), --병과
                                  exemption_reason VARCHAR2(4000)  -- 면제 사유

);

-- 직원의 자격증 정보를 저장하는 테이블
CREATE TABLE certification (
                               certification_id NUMBER PRIMARY KEY,  -- 자격증 정보 ID
                               employee_id number,  -- 직원 ID (외래 키)
                               certification_name VARCHAR2(200),  -- 자격증 이름
                               acquisition_date DATE,  -- 취득일
                               issuing_organization VARCHAR2(200),  -- 발행 기관
                               certification_number VARCHAR2(100),  -- 자격증 번호
                               remarks1 VARCHAR2(4000)  -- 비고

);

-- 직원의 언어 능력 정보를 저장하는 테이블
CREATE TABLE language_ability (
                                  language_ability_id NUMBER PRIMARY KEY,  -- 언어 능력 정보 ID
                                  employee_id number,  -- 직원 ID (외래 키)
                                  language VARCHAR2(100),  -- 언어
                                  test_name VARCHAR2(100),  -- 시험명
                                  official_score NUMBER,  -- 공식 점수
                                  acquisition_date1 DATE,  -- 취득일
                                  reading_ability VARCHAR2(20),  -- 독해 능력
                                  writing_ability VARCHAR2(20),  -- 작문 능력
                                  speaking_ability VARCHAR2(20)  -- 말하기 능력

);

-- 교육훈련 정보 저장
CREATE TABLE training (
                          training_id NUMBER PRIMARY KEY,  -- 훈련 정보 ID
                          employee_id number,  -- 직원 ID (외래 키)
                          training_type VARCHAR2(100),  -- 훈련 유형
                          training_name VARCHAR2(200),  -- 훈련명
                          training_start_date DATE,  -- 훈련 시작일
                          training_end_date DATE,  -- 훈련 종료일
                          training_organization VARCHAR2(200),  -- 훈련 기관
                          training_cost NUMBER,  -- 훈련 비용
                          refundable_training_cost NUMBER  -- 환급 가능한 훈련 비용

);

-- 상벌
CREATE TABLE reward_penalty (
                                reward_penalty_id NUMBER PRIMARY KEY,  -- 상벌 내역 ID
                                employee_id number,  -- 직원 ID (외래 키)
                                reward_penalty_type VARCHAR2(100),  -- 상벌 유형
                                reward_penalty_name VARCHAR2(200),  -- 상벌명
                                reward_penalty_giver VARCHAR2(200),  -- 상벌을 수여한 사람 또는 기관
                                reward_penalty_date DATE,  -- 상벌일
                                reward_penalty_description VARCHAR2(4000),  -- 상벌 내용
                                remarks2 VARCHAR2(4000)  -- 비고

);

--발령
CREATE TABLE appointment (
                             appointment_id NUMBER PRIMARY KEY,  -- 발령 정보 ID
                             employee_id number,  -- 직원 ID (외래 키)
                             appointment_type VARCHAR2(100),  -- 발령 유형
                             appointment_date DATE,  -- 발령일
                             department_id number,  -- 발령 부서
                             position_id number,  -- 발령 직위
                             position_type VARCHAR2(100),  -- 직책 유형
                             remarks3 VARCHAR2(4000)  -- 비고

);

-- 추천인
CREATE TABLE referrer (
                          referrer_id NUMBER PRIMARY KEY,  -- 추천인 정보 ID
                          employee_id number,  -- 직원 ID (외래 키)
                          referrer_name VARCHAR2(100),  -- 추천인 이름
                          referrer_relationship VARCHAR2(100),  -- 추천인과의 관계
                          referrer_company_name VARCHAR2(200),  -- 추천인 소속 회사
                          referrer_position VARCHAR2(100),  -- 추천인 직위
                          referrer_phone_number VARCHAR2(20)  -- 추천인 전화번호

);

-- 보증보험
CREATE TABLE insurance (
                           insurance_id NUMBER PRIMARY KEY,  -- 보험 정보 ID
                           employee_id number,  -- 직원 ID (외래 키)
                           insurance_agency VARCHAR2(200),  -- 보험 기관
                           insurance_number VARCHAR2(100),  -- 보험 번호
                           insurance_amount NUMBER,  -- 보험 금액
                           insurance_start_date DATE,  -- 보험 시작일
                           insurance_end_date DATE,  -- 보험 종료일
                           remarks4 VARCHAR2(4000)  -- 비고

);

-- 보증인
CREATE TABLE guarantor
(
    guarantor_id              NUMBER PRIMARY KEY, -- 보증인 정보 ID
    employee_id               number,             -- 직원 ID (외래 키)
    guarantor_name            VARCHAR2(100),      -- 보증인 이름
    guarantor_relationship    VARCHAR2(100),      -- 보증인과의 관계
    guarantor_resident_number VARCHAR2(20),       -- 보증인 주민등록번호
    guarantee_amount          NUMBER,             -- 보증 금액
    guarantee_date            DATE,               -- 보증일
    guarantee_expiration_date DATE,               -- 보증 만료일
    guarantor_phone_number    VARCHAR2(20)     -- 보증인 전화번호
);

-- 퇴직
CREATE TABLE retirement (
                            retirement_id NUMBER PRIMARY KEY,  -- 퇴직 정보 ID
                            employee_id number,  -- 직원 ID (외래 키)
                            retirement_type VARCHAR2(100),  -- 퇴직 유형
                            retirement_date DATE,  -- 퇴직일
                            retirement_reason VARCHAR2(4000),  -- 퇴직 사유
                            contact_after_retirement VARCHAR2(20),  -- 퇴직 후 연락 가능 여부
                            retirement_pay NUMBER -- 퇴직 수당

);


/* 안함
-- 발급대장
CREATE TABLE issue_registry (
                                issue_number VARCHAR2(20) PRIMARY KEY,  -- 발급 번호
                                employee_id VARCHAR2(20),  -- 직원 ID (외래 키)
                                issue_type VARCHAR2(100),  -- 발급 대장 (재직, 경력, 퇴직)
                                issue_purpose VARCHAR2(100),  -- 발급 목적 (은행제출용, 학교제출용)
                                issue_date DATE,  -- 발급일
                                CONSTRAINT fk_issue_employee FOREIGN KEY (employee_id) REFERENCES employee(employee_id)  -- 외래 키 제약 조건
);
*/
-----------------------------------------------------------------------------------------------------------------------------------------------------

-- 급여 종류
CREATE TABLE wage_type (
                        wage_type_id NUMBER PRIMARY KEY, -- 급여 종류 ID
                        wage_type_name VARCHAR2(50), -- 지급 항목 이름
                        number_cut VARCHAR2(50), -- 절사 단위
                        attendance_or_lumpsum VARCHAR2(50), -- 근태연결/일괄지급, 무언이 t,f일지는 결정해야 함
                        attendance_or_lumpsum_content VARCHAR2(50), -- 근태종류/일괄지급액
                        usage CHAR(1) -- 급여 종류 항목 사용여부
);

-- 급여 정보를 저장하는 테이블
CREATE TABLE wage (
                        wage_id NUMBER PRIMARY KEY,  -- 급여 정보 ID
                        employee_id number,  -- 직원 ID (외래 키)
                        wage_period VARCHAR2(20),  -- 급여 차수
                        wage_type_id NUMBER, -- 급여 종류 (외래 키)
                        wage_value NUMBER, -- 급여 금액
                        settlement_period_start_date DATE,  -- 정산 기간 시작일
                        settlement_period_end_date DATE,  -- 정산 기간 종료일
                        wage_payment_date DATE  -- 급여 지급일

);

-- 휴가 항목(종류)
CREATE TABLE vacation_type(
                            vacation_type_id NUMBER PRIMARY KEY, -- 휴가 항복(종류) ID
                            vacation_type_name VARCHAR2(50), -- 휴가 항목(종류) 이름
                            apply_period1 DATE, -- 적용 기간 시작
                            apply_period2 DATE, -- 적용 기간 끝
                            --vacation_days_id NUMBER, -- 휴가 항목 당, 사원별 휴가 일수 ID(외래 키)
                            usage CHAR(1) -- 사용 여부
                            --CONSTRAINT fk_vacation_type_value FOREIGN KEY (vacation_days_id) REFERENCES vacation_days(vacation_days_id) -- 외래키 제약조건(휴가 항목 당, 사원별 휴가 일수)
);


-- 휴가 항목 당, 사원별 휴가 일수
CREATE TABLE vacation_days (
                            vacation_days_id NUMBER PRIMARY KEY, -- 휴가 항목 당, 사원별 휴가 일수 ID
                            vacation_type_id NUMBER, -- 휴가 항복(종류) ID (외래 키)
                            employee_id number, -- 직원 ID (외래 키)
                            vacation_value NUMBER -- 휴가 일수

);

-- 근태 그룹
CREATE TABLE attendance_group(
                            attandance_group_id NUMBER PRIMARY KEY, -- 근태 그룹 ID
                            attandance_group_name VARCHAR2(50) -- 근태 그룹 이름
);

-- 일용직 근무처(현장/프로젝트)
CREATE TABLE feild_or_project(
                            feild_or_project_id NUMBER PRIMARY KEY, -- ID
                            name VARCHAR2(100) -- 현장/프젝 이름
);

-- 근태 및 기록 정보를 관리하는 테이블
CREATE TABLE attendance (
                            attendance_id NUMBER PRIMARY KEY,  -- 근태 기록 ID
                            employee_id number,  -- 직원 ID (외래 키)
                            input_date DATE,  -- 입력일자
                            attendance_type_id NUMBER,  -- 근태항목(외래 키)
                            feild_or_project_id NUMBER, -- 일용직 현장/프젝 이름
                            start_date DATE,  -- 기간 시작일
                            end_date DATE,  -- 기간 종료일
                            attendance_days NUMBER,  -- 근태일수
                            amount NUMBER,  -- 금액
                            summary VARCHAR2(4000)  -- 적요
                           -- 외래키 제약조건(휴가 공제)
);

-- 근태 항목(종류)
CREATE TABLE attendance_type(
                            attendance_type_id NUMBER PRIMARY KEY, -- 근태 항목(종류) ID
                            attendance_type_name VARCHAR2(50), -- 근태 항목(종류) 이름
                            unit VARCHAR2(50), -- 단위(일/시간)
                            attandance_group_id NUMBER, -- 근태 그룹(외래 키)
                            vacation_type_id NUMBER, -- 휴가 공제(외래 키)
                            usage CHAR(1) -- 근태 항목(종류) 사용여부

);

-- 부서
CREATE TABLE department (
    department_id NUMBER PRIMARY KEY , -- 부서 코드
    department_name VARCHAR2(100) -- 부서명
);

-- 직위
CREATE TABLE position (
    position_id NUMBER PRIMARY KEY , -- 직위 코드
    position_name VARCHAR2(100)  -- 직위명
);
commit;
-----------------------------------------------------------------------------------------------------------------------------------------------------
--basic datas

-- 기본 급여 종류 입력하기
INSERT INTO wage_type VALUES (wage_type_seq.nextval, '基本給', NULL, NULL, NULL, 'T');
INSERT INTO wage_type VALUES (wage_type_seq.nextval, '食費', NULL, '一括払い','200000', 'T');
INSERT INTO wage_type VALUES (wage_type_seq.nextval, '保育手当', NULL, NULL, NULL, 'T');
INSERT INTO wage_type VALUES (wage_type_seq.nextval, '職責手当', NULL, NULL, NULL, 'T');
INSERT INTO wage_type VALUES (wage_type_seq.nextval, '車両維持費', NULL, NULL, NULL, 'T');
INSERT INTO wage_type VALUES (wage_type_seq.nextval, '勤続手当', NULL, NULL, NULL, 'T');
INSERT INTO wage_type VALUES (wage_type_seq.nextval, '当直手当', NULL, '勤怠連結', '延長勤務', 'T');
INSERT INTO wage_type VALUES (wage_type_seq.nextval, '賞与金', NULL, NULL, NULL, 'T');
INSERT INTO wage_type VALUES (wage_type_seq.nextval, '休日手当', NULL, '勤怠連結', '休日勤務', 'T');

-- 기본 근태 그룹 종류 입력
INSERT INTO attendance_group VALUES (attendance_group_seq.nextval, '休暇');
INSERT INTO attendance_group VALUES (attendance_group_seq.nextval, '延長勤務');
INSERT INTO attendance_group VALUES (attendance_group_seq.nextval, '遅刻早退');
INSERT INTO attendance_group VALUES (attendance_group_seq.nextval, '特別勤務');
INSERT INTO attendance_group VALUES (attendance_group_seq.nextval, 'その他');

-- 기본 근태 항목(종류) 입력
INSERT INTO attendance_type VALUES (attendance_type_seq.nextval, '年次', '日', '1', NULL, 'T');
INSERT INTO attendance_type VALUES (attendance_type_seq.nextval, '半次', '日', '1', NULL, 'T');
INSERT INTO attendance_type VALUES (attendance_type_seq.nextval, '遅刻', '時間', '3', NULL, 'T');
INSERT INTO attendance_type VALUES (attendance_type_seq.nextval, '早退', '時間', '3', NULL, 'T');
INSERT INTO attendance_type VALUES (attendance_type_seq.nextval, '外勤', '時間', '5', NULL, 'T');
INSERT INTO attendance_type VALUES (attendance_type_seq.nextval, '休日勤務', '時間', '2', NULL, 'T');
INSERT INTO attendance_type VALUES (attendance_type_seq.nextval, '延長勤務', '時間', '2', NULL, 'T');
INSERT INTO attendance_type VALUES (attendance_type_seq.nextval, '褒賞休暇', '日', '1', NULL, 'T');
INSERT INTO attendance_type VALUES (attendance_type_seq.nextval, '夜間勤務', '時間', '2', NULL, 'T');
INSERT INTO attendance_type VALUES (attendance_type_seq.nextval, '請願休暇', '日', '1', NULL, 'T');
INSERT INTO attendance_type VALUES (attendance_type_seq.nextval, '外勤', '時間', '5', '1', 'T');

-- department 테이블에 값 삽입
INSERT ALL
INTO department (department_id, department_name)VALUES (5, 'デザイン部')          -- 디자인부
INTO department (department_id, department_name)VALUES (3, 'コンテンツ部')        -- 콘텐츠부
INTO department (department_id, department_name)VALUES (4, '業務支援部')          -- 업무지원부
INTO department (department_id, department_name)VALUES (7, '企画戦略部')          -- 기획전략부
INTO department (department_id, department_name)VALUES (6, '管理部')              -- 관리부
INTO department (department_id, department_name)VALUES (1, '社長室')              -- 사장실
INTO department (department_id, department_name)VALUES (2, '開発部')              -- 개발부
SELECT * FROM dual;
select * from department;

-- position 테이블에 값 삽입
INSERT ALL
INTO position (position_id, position_name)VALUES (1, '社長')     -- 사장
INTO position (position_id, position_name)VALUES (2, '取締役')     -- 이사
INTO position (position_id, position_name)VALUES (3, '室長')       -- 실장
INTO position (position_id, position_name)VALUES  (4, '部長')       -- 부장
INTO position (position_id, position_name)VALUES (5, '次長')       -- 차장
INTO position (position_id, position_name)VALUES (6, '課長')       -- 과장
INTO position (position_id, position_name)VALUES (7, '代理')       -- 대리
INTO position (position_id, position_name)VALUES (8, '主任')       -- 주임
INTO position (position_id, position_name)VALUES (9, '社員')       -- 사원
SELECT * FROM dual;

-- feild 테이블에 값 삽입
INSERT ALL
INTO feild_or_project VALUES (1, '開発プロジェクト')
INTO feild_or_project VALUES (2, '研究所')
INTO feild_or_project VALUES (3, '工場1')
INTO feild_or_project VALUES (4, '現場1')
INTO feild_or_project VALUES (5, '現場2')
SELECT * FROM dual;

-- 휴가 항목 테이블에 값 삽입
INSERT INTO vacation_type VALUES (vacation_type_seq.nextval, '2015年次', '20240101','20241231','N');
INSERT INTO vacation_type VALUES (vacation_type_seq.nextval, '2016年次', '20240101','20241231','N');
INSERT INTO vacation_type VALUES (vacation_type_seq.nextval, '2017年次', '20240101','20241231','N');
INSERT INTO vacation_type VALUES (vacation_type_seq.nextval, '2018年次', '20240101','20241231','N');
INSERT INTO vacation_type VALUES (vacation_type_seq.nextval, '2019年次', '20240101','20241231','N');
INSERT INTO vacation_type VALUES (vacation_type_seq.nextval, '2020年次', '20240101','20241231','N');
INSERT INTO vacation_type VALUES (vacation_type_seq.nextval, '2021年次', '20240101','20241231','N');
INSERT INTO vacation_type VALUES (vacation_type_seq.nextval, '2022年次', '20240101','20241231','N');
INSERT INTO vacation_type VALUES (vacation_type_seq.nextval, '2023年次', '20240101','20241231','N');
INSERT INTO vacation_type VALUES (vacation_type_seq.nextval, '2024年次', '20240101','20241231','Y');

commit ;
-----------------------------------------------------------------------------------------------------------------------------------------------------
-- 급여 대장 기능 테스트를 위한 더미데이터 코드
-- 2022년도로 설정하고, 클릭해보면, 콘솔에 데이터 표시.
insert into employee values (1,1,1,employee_seq.nextval,'1','1','1','20220202','20220203','1','1','1','1','1','1','1','1','1','1','1','1');
INSERT INTO wage (wage_id, employee_id, wage_period, wage_type_id, wage_value, settlement_period_start_date, settlement_period_end_date, wage_payment_date)
SELECT 
    wage_seq.nextval,
    MOD(wage_seq.currval - 1, 4) + 1, -- 1부터 4까지의 순차적인 employee_id 할당
    '1', -- wage_period: 고정값 1
    MOD(wage_seq.currval - 1, 9) + 1, -- 1부터 9까지의 순차적인 wage_type_id 할당
    ROUND(DBMS_RANDOM.VALUE(100000, 3000000), -3), -- wage_value: 100000부터 3000000까지 최소 1000원 단위로 랜덤으로 선택
    TO_DATE('20220202', 'YYYYMMDD'), -- settlement_period_start_date: 고정값 '2022-02-02'
    TO_DATE('20220203', 'YYYYMMDD'), -- settlement_period_end_date: 고정값 '2022-02-03'
    TO_DATE('20220204', 'YYYYMMDD') -- wage_payment_date: 고정값 '2022-02-04'
FROM
    dual
CONNECT BY
    level <= 36; -- 4 (employee_id 개수) * 9 (wage_type_id 개수)
insert into employee values (employee_seq.nextval,'1','1','1','20220202','20220203','1','1','1','1','1','1','1','1','1','1','1','1');