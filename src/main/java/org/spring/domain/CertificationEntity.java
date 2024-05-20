package org.spring.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CertificationEntity extends EmployeeEntity{
    private Long certificationId;
    private String certificationName;
    private LocalDate certificationDate;
    private String issuingOrganization;
    private String certificationNumber;
    private String remarks;

}
