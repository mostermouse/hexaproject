
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

CREATE SEQUENCE salary_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;

CREATE SEQUENCE attendance_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;
  
  CREATE SEQUENCE vacation_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
  NOCYCLE;


-- 직원 정보를 저장하는 테이블
CREATE TABLE employee (

                          employee_id Number PRIMARY KEY,  -- 직원 ID
                          employment_type VARCHAR2(100),  -- 고용 형태 (정규직, 계약직 등)
                          korean_name VARCHAR2(100),  -- 한글 이름
                          english_name VARCHAR2(100),  -- 영문 이름
                          hire_date DATE,  -- 입사일
                          resignation_date DATE,  -- 퇴사일
                          department VARCHAR2(100),  -- 소속 부서
                          position VARCHAR2(100),  -- 직급 또는 직책
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
                            foreign_or_domestic VARCHAR2(20),  -- 국내 또는 외국인
                            parents_number1 VARCHAR2(20),  -- 가족 주민등록번호 1
                            parents_number2 VARCHAR2(20),  -- 가족 주민등록번호 2
                            CONSTRAINT fk_dependent_emplyee FOREIGN KEY (employee_id) REFERENCES employee(employee_id)  -- 외래 키 제약 조건
);

-- 직원의 학력 정보를 저장하는 테이블
CREATE TABLE degree (
                        education_id NUMBER PRIMARY KEY,  -- 교육 정보 ID
                        employee_id Number,  -- 직원 ID (외래 키)
                        graduate VARCHAR2(100),  -- 최종학력
                        admission_date DATE,  -- 입학일
                        graduation_date DATE,  -- 졸업일
                        school_name VARCHAR2(200),  -- 학교 이름
                        major VARCHAR2(100),  -- 전공
                        completion VARCHAR2(10),  -- 졸업 여부
                        CONSTRAINT fk_degree_employee FOREIGN KEY (employee_id) REFERENCES employee(employee_id)  -- 외래 키 제약 조건
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
                        reason_for_leaving VARCHAR2(4000),  -- 퇴사 사유
                        CONSTRAINT fk_career_employee FOREIGN KEY (employee_id) REFERENCES employee(employee_id)  -- 외래 키 제약 조건
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
                                military_class varchar2(100), --병과
                                  exemption_reason VARCHAR2(4000),  -- 면제 사유
                                  CONSTRAINT fk_military_employee FOREIGN KEY (employee_id) REFERENCES employee(employee_id)  -- 외래 키 제약 조건
);

-- 직원의 자격증 정보를 저장하는 테이블
CREATE TABLE certification (
                               certification_id NUMBER PRIMARY KEY,  -- 자격증 정보 ID
                               employee_id number,  -- 직원 ID (외래 키)
                               certification_name VARCHAR2(200),  -- 자격증 이름
                               acquisition_date DATE,  -- 취득일
                               issuing_organization VARCHAR2(200),  -- 발행 기관
                               certification_number VARCHAR2(100),  -- 자격증 번호
                               remarks VARCHAR2(4000),  -- 비고
                               CONSTRAINT fk_certification_employee FOREIGN KEY (employee_id) REFERENCES employee(employee_id)  -- 외래 키 제약 조건
);

-- 직원의 언어 능력 정보를 저장하는 테이블
CREATE TABLE language_ability (
                                  language_ability_id NUMBER PRIMARY KEY,  -- 언어 능력 정보 ID
                                  employee_id number,  -- 직원 ID (외래 키)
                                  language VARCHAR2(100),  -- 언어
                                  test_name VARCHAR2(100),  -- 시험명
                                  official_score NUMBER,  -- 공식 점수
                                  acquisition_date DATE,  -- 취득일
                                  reading_ability VARCHAR2(20),  -- 독해 능력
                                  writing_ability VARCHAR2(20),  -- 작문 능력
                                  speaking_ability VARCHAR2(20),  -- 말하기 능력
                                  CONSTRAINT fk_language_employee FOREIGN KEY (employee_id) REFERENCES employee(employee_id)  -- 외래 키 제약 조건
);
-----------------------------------------------------------------------------------------------------------------------------------------------------
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
                          refundable_training_cost NUMBER,  -- 환급 가능한 훈련 비용
                          CONSTRAINT fk_training_employee FOREIGN KEY (employee_id) REFERENCES employee(employee_id)  -- 외래 키 제약 조건
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
                                remarks VARCHAR2(4000),  -- 비고
                                CONSTRAINT fk_reward_penalty_employee FOREIGN KEY (employee_id) REFERENCES employee(employee_id)  -- 외래 키 제약 조건
);

--발령
CREATE TABLE appointment (
                             appointment_id NUMBER PRIMARY KEY,  -- 발령 정보 ID
                             employee_id number,  -- 직원 ID (외래 키)
                             appointment_type VARCHAR2(100),  -- 발령 유형
                             appointment_date DATE,  -- 발령일
                             department VARCHAR2(100),  -- 발령 부서
                             position VARCHAR2(100),  -- 발령 직위
                             position_type VARCHAR2(100),  -- 직책 유형
                             remarks VARCHAR2(4000),  -- 비고
                             CONSTRAINT fk_appointment_employee FOREIGN KEY (employee_id) REFERENCES employee(employee_id)  -- 외래 키 제약 조건
);

-- 추천인
CREATE TABLE referrer (
                          referrer_id NUMBER PRIMARY KEY,  -- 추천인 정보 ID
                          employee_id number,  -- 직원 ID (외래 키)
                          referrer_name VARCHAR2(100),  -- 추천인 이름
                          referrer_relationship VARCHAR2(100),  -- 추천인과의 관계
                          referrer_company_name VARCHAR2(200),  -- 추천인 소속 회사
                          referrer_position VARCHAR2(100),  -- 추천인 직위
                          referrer_phone_number VARCHAR2(20),  -- 추천인 전화번호
                          CONSTRAINT fk_referrer_employee FOREIGN KEY (employee_id) REFERENCES employee(employee_id)  -- 외래 키 제약 조건
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
                           remarks VARCHAR2(4000),  -- 비고
                           CONSTRAINT fk_insurance_employee FOREIGN KEY (employee_id) REFERENCES employee(employee_id)  -- 외래 키 제약 조건
);

-- 보증인
CREATE TABLE guarantor (
                           guarantor_id NUMBER PRIMARY KEY,  -- 보증인 정보 ID
                           employee_id number,  -- 직원 ID (외래 키)
                           guarantor_name VARCHAR2(100),  -- 보증인 이름
                           guarantor_relationship VARCHAR2(100),  -- 보증인과의 관계
                           guarantor_resident_number VARCHAR2(20),  -- 보증인 주민등록번호
                           guarantee_amount NUMBER,  -- 보증 금액
                           guarantee_date DATE,  -- 보증일
                           guarantee_expiration_date DATE,  -- 보증 만료일
                           guarantor_phone_number VARCHAR2(20),  -- 보증인 전화번호
                           CONSTRAINT fk_guarantor_employee FOREIGN KEY (employee_id) REFERENCES employee(employee_id)  -- 외래 키 제약 조건
);

-- 퇴직
CREATE TABLE retirement (
                            retirement_id NUMBER PRIMARY KEY,  -- 퇴직 정보 ID
                            employee_id number,  -- 직원 ID (외래 키)
                            retirement_type VARCHAR2(100),  -- 퇴직 유형
                            retirement_date DATE,  -- 퇴직일
                            retirement_reason VARCHAR2(4000),  -- 퇴직 사유
                            contact_after_retirement VARCHAR2(20),  -- 퇴직 후 연락 가능 여부
                            retirement_benefits NUMBER,  -- 퇴직 수당
                            CONSTRAINT fk_retirement_employee FOREIGN KEY (employee_id) REFERENCES employee(employee_id)  -- 외래 키 제약 조건
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


-- 급여 정보를 저장하는 테이블
CREATE TABLE salary (
                        salary_id NUMBER PRIMARY KEY,  -- 급여 정보 ID
                        employee_id number,  -- 직원 ID (외래 키)
                        salary_period VARCHAR2(20),  -- 급여 차수
                        basic_salary NUMBER,  -- 기본 급여
                        meal_allowance NUMBER,  -- 식대
                        childcare_allowance NUMBER,  -- 양육 수당
                        position_allowance NUMBER,  -- 직책 수당
                        vehicle_allowance NUMBER,  -- 차량 유지 수당
                        longevity_allowance NUMBER,  -- 장기근속 수당
                        duty_allowance NUMBER,  -- 업무 수당
                        bonus NUMBER,  -- 보너스
                        holiday_allowance NUMBER,  -- 휴일 수당
                        settlement_period_start_date DATE,  -- 정산 기간 시작일
                        settlement_period_end_date DATE,  -- 정산 기간 종료일
                        salary_payment_date DATE,  -- 급여 지급일
                        CONSTRAINT fk_salary_employee FOREIGN KEY (employee_id) REFERENCES employee(employee_id)  -- 외래 키 제약 조건
);

-- 근태 및 기록 정보를 관리하는 테이블
CREATE TABLE attendance (
                            attendance_id NUMBER PRIMARY KEY,  -- 근태 기록 ID
                            employee_id number,  -- 직원 ID (외래 키)
                            input_date DATE,  -- 입력일자
                            attendance_item VARCHAR2(100),  -- 근태항목
                            start_date DATE,  -- 기간 시작일
                            end_date DATE,  -- 기간 종료일
                            attendance_days NUMBER,  -- 근태일수
                            amount NUMBER,  -- 금액
                            summary VARCHAR2(4000),  -- 적요
                            CONSTRAINT fk_attendance_employee FOREIGN KEY (employee_id) REFERENCES employee(employee_id)  -- 직원 테이블의 외래 키 제약 조건
);

/*
-- 사원등록 할때 기본급여/계좌 입력받는 테이블
CREATE TABLE employee_salary_account (
                                         account_id NUMBER PRIMARY KEY,  -- 계좌 정보 ID
                                         employee_id VARCHAR2(20),  -- 직원 ID (외래 키)
                                         bank_name VARCHAR2(100),  -- 은행 이름
                                         account_number VARCHAR2(100),  -- 계좌 번호
                                         CONSTRAINT fk_account_employee FOREIGN KEY (employee_id) REFERENCES employee(employee_id)  -- 외래 키 제약 조건
);
*/

--휴가 테이블
CREATE TABLE vacation(
    vacation_id NUMBER PRIMARY KEY, --휴가 기록ID
    employee_id NUMBER, --직원ID(외래 키)
    vacation_item, --휴가항목
    total_vacation NUMBER, --전체휴가
    used_vacation NUMBER,  --사용휴가
    remaining_vacation NUMBER, --잔여휴가
    CONSTRAINT fk_vacation_employee FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

