package org.spring.domain.employee.mapper;

import org.spring.domain.employee.controller.model.DetailsRegistrationForm;
import org.spring.domain.employeedetails.model.AppointmentEntity;
import org.spring.domain.employeedetails.model.CertificationEntity;
import org.spring.domain.employeedetails.model.GuarantorEntity;
import org.spring.domain.employeedetails.model.InsuranceEntity;
import org.spring.domain.employeedetails.model.LanguageAbilityEntity;
import org.spring.domain.employeedetails.model.ReferrerEntity;
import org.spring.domain.employeedetails.model.RetirementEntity;
import org.spring.domain.employeedetails.model.RewardPenaltyEntity;
import org.spring.domain.employeedetails.model.TrainingEntity;

public interface EmpDetailsMapper {
	
	// 사원등록 2페이지
	void registerDetails(CertificationEntity certificationEntity , LanguageAbilityEntity languageAbilityEntity , TrainingEntity trainingEntity ,RewardPenaltyEntity rewardPenaltyEntity ,
						 AppointmentEntity appointmentEntity, ReferrerEntity referrerEntity , InsuranceEntity insuranceEntity , GuarantorEntity guarantorEntity);
	
	void insertCertification(CertificationEntity certificationEntity);
	void insertLanguageAbility(LanguageAbilityEntity languageAbilityEntity);
	void insertTraining(TrainingEntity trainingEntity);
	void insertRewardPenalty(RewardPenaltyEntity rewardPenaltyEntity);
	void insertAppointment(AppointmentEntity appointmentEntity);
	void insertReferrer(ReferrerEntity referrerEntity);
	void insertInsurance(InsuranceEntity insuranceEntity);
	void insertGuarantor(GuarantorEntity guarantorEntity);
	void insertRetirement(RetirementEntity retirementEntity);


	Long searchEmployeeId();
	
}
