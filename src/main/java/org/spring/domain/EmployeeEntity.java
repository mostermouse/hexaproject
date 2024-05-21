package org.spring.domain;

import lombok.*;
import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EmployeeEntity {

    private Long employeeId;
    private String employmentType;
    private String koreanName;
    private String englishName;
    private LocalDate hireDate;
    private LocalDate resignationDate;
    private String department;
    private String position;
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
