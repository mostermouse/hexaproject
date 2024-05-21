package org.spring.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SalaryEntity extends EmployeeEntity{
   private Long salaryId;
   private String salaryPeriod;
   private Long basicSalary;
   private Long mealAllowance;
   private Long childcareAllowance;
   private Long positionAllowance;
   private Long vehicleAllowance;
   private Long longevityAllowance;
   private Long dutyAllowance;
   private Long bonus;
   private Long holidayAllowance;
   private LocalDate settlementPeriodStartDate;
   private LocalDate settlementPeriodEndDate;
   private LocalDate salaryPaymentDate;

}
