package org.spring.domain.employee.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EmployeeSalaryAccountEntity extends ContactEntity {

		private Long accountId;
		private String bankName;
		private String accountNumber;
		private String depositStocks;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
		private LocalDate salaryCalculation1;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
		private LocalDate salaryCalculation2;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
		private LocalDate salaryPaymentDate;


		
}
