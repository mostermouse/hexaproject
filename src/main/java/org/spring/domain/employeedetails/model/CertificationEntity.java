package org.spring.domain.employeedetails.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.spring.domain.employee.model.EmployeeEntity;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CertificationEntity extends EmployeeEntity {
    private Long certificationId;
    private String certificationName;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate certificationDate;
    private String issuingOrganization;
    private String certificationNumber;
    private String remarks;

}
