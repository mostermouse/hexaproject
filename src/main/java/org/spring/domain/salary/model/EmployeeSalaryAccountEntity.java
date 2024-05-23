package org.spring.domain.salary.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.spring.domain.Employee.model.EmployeeEntity;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EmployeeSalaryAccountEntity extends EmployeeEntity {

		private Long accountId;
		private String bankName;
		private String accountNumber;
		private Long basicSalary;
		
}
