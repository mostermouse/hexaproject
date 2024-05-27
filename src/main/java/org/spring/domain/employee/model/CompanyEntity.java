package org.spring.domain.employee.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CompanyEntity extends DepartmentEntity{
    private Long companyId;
    private String companyName;
    private String representativeTitle;
    private String representativeName;
    private String businessNumber;
    private String corporationNumber;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate establishmentDate;
    private String website;
    private String officeAddress;
    private String phoneNumber;
    private String faxNumber;
    private String businessType;
    private String businessItem;
}
