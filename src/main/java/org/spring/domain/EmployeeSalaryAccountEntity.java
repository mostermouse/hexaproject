package org.spring.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EmployeeSalaryAccountEntity extends EmployeeEntity{

		private Long accountId;
		private String bankName;
		private String accountNumber;
		private Long basicSalary;
		
}
