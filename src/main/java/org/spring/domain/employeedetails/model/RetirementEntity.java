package org.spring.domain.employeedetails.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.spring.domain.Employee.model.EmployeeEntity;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RetirementEntity extends EmployeeEntity {
   private Long retirementId;
   private String retirementType;
   private LocalDate retirementDate;
   private String retirementReason;
   private String contactAfterRetirement;
   private Long retirementPay;

}
