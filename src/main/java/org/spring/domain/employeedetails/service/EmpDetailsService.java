package org.spring.domain.employeedetails.service;

import org.spring.domain.employee.controller.model.DetailsRegistrationForm;
import org.spring.domain.employeedetails.model.*;

public interface EmpDetailsService {
	void registerDetails(CertificationEntity certificationEntity , LanguageAbilityEntity languageAbilityEntity , TrainingEntity trainingEntity , RewardPenaltyEntity rewardPenaltyEntity ,
						 AppointmentEntity appointmentEntity, ReferrerEntity referrerEntity , InsuranceEntity insuranceEntity , GuarantorEntity guarantorEntity );

}
