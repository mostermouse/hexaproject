    package org.spring.domain.employee.service;

    import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import org.spring.domain.employee.controller.model.EmployeeRegistrationForm;
import org.spring.domain.employee.controller.model.WageRecordRequest;
import org.spring.domain.employee.mapper.EmpMapper;
import org.spring.domain.employee.model.CareerEntity;
import org.spring.domain.employee.model.CompanyEntity;
import org.spring.domain.employee.model.ContactEntity;
import org.spring.domain.employee.model.DegreeEntity;
import org.spring.domain.employee.model.DepartmentEntity;
import org.spring.domain.employee.model.DependentsEntity;
import org.spring.domain.employee.model.EmployeeEntity;
import org.spring.domain.employee.model.EmployeeSalaryAccountEntity;
import org.spring.domain.employee.model.MilitaryServiceEntity;
import org.spring.domain.employee.model.PositionEntity;
import org.spring.domain.wage.model.WageEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

    @Log4j
    @Service
    @AllArgsConstructor
    public class EmployeeImpl implements EmployeeService{

        @Setter(onMethod_ = @Autowired)
        private EmpMapper mapper;

        //급여현황
        @Override
        public List<WageRecordRequest> listWageRecord(Long year) {

            log.info("listWageRecord..........");

            List<WageEntity> yearWageEntities = mapper.getYearWage(year);
            log.info(yearWageEntities.size() + " wageEntities found");
            List<WageRecordRequest> wageRecordRequests = new ArrayList<>();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM");

            for(int j = 1; j <= 12; j++) {
                for(int k = 1; k <= 10; k++) {
                    WageRecordRequest wageRecordRequest = new WageRecordRequest();
                    int totalCount = 0;
                    int totalWage = 0;
                    int record = 0;
                    for(int i = 0; i < yearWageEntities.size(); i++) {
                        if(yearWageEntities.get(i).getWagePaymentDate().getMonthValue() == j ) {
                            if( Integer.parseInt(yearWageEntities.get(i).getWagePeriod()) == k) {
                                record = i;
                                totalCount++;
                                totalWage += yearWageEntities.get(i).getWageValue();
                            };
                        };
                    }
                    if(totalCount != 0) {
                    wageRecordRequest.setYearMonth(yearWageEntities.get(record).getWagePaymentDate().format(formatter));
                    wageRecordRequest.setWagePeriod(yearWageEntities.get(record).getWagePeriod());
                    wageRecordRequest.setSettlementPeriodStartDate(yearWageEntities.get(record).getSettlementPeriodStartDate());
                    wageRecordRequest.setSettlementPeriodEndDate(yearWageEntities.get(record).getSettlementPeriodEndDate());
                    wageRecordRequest.setWagePaymentDate(yearWageEntities.get(record).getWagePaymentDate());
                    wageRecordRequest.setPaidEmployeeCount((long) totalCount);
                    wageRecordRequest.setTotalPaidWage((long) totalWage);

                    wageRecordRequests.add(wageRecordRequest);
                    };

                }
            }
            return wageRecordRequests;
        }

        @Override
        public List<DepartmentEntity> getDepartment() {
            return mapper.getDepartment();
        }

        @Override
        public List<PositionEntity> getPosition() {
            return mapper.getPosition();
        }



        // 사원현황판
        @Override
        public List<EmployeeEntity> getAllEmployee() {
            log.info("getEmployee..........");


            return mapper.getAllEmployee();
        }
        @Override
        public long countByStatusEmployed() {
            return mapper.countByStatusEmployed();
        }

        @Override
        public long countByEmploymentTypeRegular() {
            return mapper.countByEmploymentTypeRegular();
        }

        @Override
        public long countByEmploymentTypeContract() {
            return mapper.countByEmploymentTypeContract();
        }

        @Override
        public long countByEmploymentTypeTemporary() {
            return mapper.countByEmploymentTypeTemporary();
        }

        @Override
        public long countByEmploymentTypeDispatched() {
            return mapper.countByEmploymentTypeDispatched();
        }

        @Override
        public long countByEmploymentTypeAppointed() {
            return mapper.countByEmploymentTypeAppointed();
        }

        @Override
        public long countByEmploymentTypeDaily() {
            return mapper.countByEmploymentTypeDaily();
        }

        @Override
        public long countByStatusResigned() {
            return mapper.countByStatusResigned();
        }

        @Override
        public long countAllEmployees() {
            return mapper.countAllEmployees();
        }

        @Override
        public void registerEmployee(EmployeeEntity employeeEntity, DependentsEntity dependentsEntity, DegreeEntity degreeEntity, CareerEntity careerEntity, MilitaryServiceEntity militaryServiceEntity) {
            //employee에 채워줄 아이디
            Long companyId = mapper.getCompanyId();
            Long contactId = mapper.getContactId();
            Long accountId = mapper.getAcountId(); // 변수명 수정

            // 직원 시퀀스 값 가져오기
            Long employeeSeqVal = mapper.getEmpSeqVal();
            Long employeeSeqCurrVal = mapper.getEmpSeqCurrval();
            //각 테이블 기본키 id
            Long dependentsSeq = mapper.getDependentSeq();
            Long degreeSeq = mapper.getDegreeSeq();
            Long careerSeq = mapper.getCareerSeq();
            Long militarySeq = mapper.getMilitarySeq();

            // 엔티티에 ID 값 설정
            employeeEntity.setPersonId(companyId);
            employeeEntity.setAccountId(accountId);
            employeeEntity.setCompanyId(contactId);
            employeeEntity.setEmployeeId(employeeSeqVal);

            dependentsEntity.setEmployeeId(employeeSeqCurrVal);
            dependentsEntity.setDependentId(dependentsSeq);

            degreeEntity.setEmployeeId(employeeSeqCurrVal);
            degreeEntity.setDegreeId(degreeSeq);

            careerEntity.setEmployeeId(employeeSeqCurrVal);
            careerEntity.setCareerId(careerSeq);

            militaryServiceEntity.setEmployeeId(employeeSeqCurrVal);
            militaryServiceEntity.setMilitaryServiceId(militarySeq);

            // 각 엔티티 등록
            mapper.insertEmployee(employeeEntity);
            mapper.insertDependent(dependentsEntity);
            mapper.insertDegree(degreeEntity);
            mapper.insertCareer(careerEntity);
            mapper.insertMilitaryService(militaryServiceEntity);

        }


        @Override
        @Transactional
        public void registerCompanyAndDetails(CompanyEntity company, ContactEntity contact, EmployeeSalaryAccountEntity salaryAccount) {
            Long sequenceId = mapper.getNextSeqVal();

            // 생성된 시퀀스 번호 설정
            company.setCompanyId(sequenceId);

            contact.setPersonId(sequenceId);
            contact.setCompanyId(sequenceId);
            salaryAccount.setAccountId(sequenceId);
            salaryAccount.setCompanyId(sequenceId);

            // 데이터 삽입
            mapper.insertCompany(company);
            mapper.insertContact(contact);
            mapper.insertSalaryAccount(salaryAccount);
        }
        public CompanyEntity getCompany() {
            return  mapper.getCompany();
        }

        @Override
        public DepartmentEntity getEmpInfo(EmployeeEntity employeeEntity , PositionEntity positionEntity , DepartmentEntity departmentEntity) {

           return  mapper.getEmpInfo(employeeEntity , positionEntity , departmentEntity);


        }


    }

