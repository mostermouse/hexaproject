package org.spring.domain.employeedetails.service;

import org.spring.domain.employee.controller.model.DetailsRegistrationForm;
import org.spring.domain.employee.mapper.EmpDetailsMapper;
import org.spring.domain.employeedetails.model.AppointmentEntity;
import org.spring.domain.employeedetails.model.CertificationEntity;
import org.spring.domain.employeedetails.model.GuarantorEntity;
import org.spring.domain.employeedetails.model.InsuranceEntity;
import org.spring.domain.employeedetails.model.LanguageAbilityEntity;
import org.spring.domain.employeedetails.model.ReferrerEntity;
import org.spring.domain.employeedetails.model.RetirementEntity;
import org.spring.domain.employeedetails.model.RewardPenaltyEntity;
import org.spring.domain.employeedetails.model.TrainingEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class EmpDetailsImpl implements EmpDetailsService {

	@Setter(onMethod_ = @Autowired)
	private EmpDetailsMapper mapper;

	// 사원등록 2페이지
	@Override
	@Transactional
	public void registerDetails(DetailsRegistrationForm detailsRegistrationForm) {
		
		log.info("rigsterdetails..........");

		CertificationEntity certificationEntity = detailsRegistrationForm.getCertificationEntity();
		LanguageAbilityEntity languageAbilityEntity = detailsRegistrationForm.getLanguageAbilityEntity();
		TrainingEntity trainingEntity = detailsRegistrationForm.getTrainingEntity();
		RewardPenaltyEntity rewardPenaltyEntity = detailsRegistrationForm.getRewardPenaltyEntity();
		AppointmentEntity appointmentEntity = detailsRegistrationForm.getAppointmentEntity();
		ReferrerEntity referrerEntity = detailsRegistrationForm.getReferrerEntity();
		InsuranceEntity insuranceEntity = detailsRegistrationForm.getInsuranceEntity();
		GuarantorEntity guarantorEntity = detailsRegistrationForm.getGuarantorEntity();
		RetirementEntity retirementEntity = detailsRegistrationForm.getRetirementEntity();

		// 각 엔티티 등록
		mapper.insertCertification(certificationEntity);
		mapper.insertLanguageAbility(languageAbilityEntity);
		mapper.insertTraining(trainingEntity);
		mapper.insertRewardPenalty(rewardPenaltyEntity);
		mapper.insertAppointment(appointmentEntity);
		mapper.insertReferrer(referrerEntity);
		mapper.insertInsurance(insuranceEntity);
		mapper.insertGuarantor(guarantorEntity);
		mapper.insertRetirement(retirementEntity);

	}
}
