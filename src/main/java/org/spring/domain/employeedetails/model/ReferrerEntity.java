package org.spring.domain.employeedetails.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.spring.domain.Employee.model.EmployeeEntity;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReferrerEntity extends EmployeeEntity {
    private Long referrerId;
    private String referrerName;
    private String referrerRelationship;
    private String referrerCompanyName;
    private String referrerPosition;
    private String referrerPhoneNumber;

}
