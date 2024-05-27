package org.spring.domain.employee.model;


import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class EmployeeEntity {

    private Long employeeId;
    private String employmentType;
    private String koreanName;
    private String englishName;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate hireDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate resignationDate;
    private Long  departmentId;
    private Long  positionId;
    private String foreignOrDomestic;
    private String residentNumber1;
    private String residentNumber2;
    private String address;
    private String telPhone;
    private String mobile;
    private String email;
    private String sns;
    private String otherDetails;
    private String  status;


}



