package org.spring.domain.employee.controller.model;

import org.spring.domain.employeedetails.model.AppointmentEntity;
import org.spring.domain.employeedetails.model.CertificationEntity;
import org.spring.domain.employeedetails.model.GuarantorEntity;
import org.spring.domain.employeedetails.model.InsuranceEntity;
import org.spring.domain.employeedetails.model.LanguageAbilityEntity;
import org.spring.domain.employeedetails.model.ReferrerEntity;
import org.spring.domain.employeedetails.model.RetirementEntity;
import org.spring.domain.employeedetails.model.RewardPenaltyEntity;
import org.spring.domain.employeedetails.model.TrainingEntity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DetailsRegistrationForm {
	private CertificationEntity certificationEntity;
	private LanguageAbilityEntity languageAbilityEntity;
	private TrainingEntity trainingEntity;
	private RewardPenaltyEntity rewardPenaltyEntity;
	private AppointmentEntity appointmentEntity;
	private ReferrerEntity referrerEntity;
	private InsuranceEntity insuranceEntity;
	private GuarantorEntity guarantorEntity;
	private RetirementEntity retirementEntity;
	

}
