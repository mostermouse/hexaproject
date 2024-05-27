package org.spring.domain.employeedetails.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.spring.domain.employee.model.EmployeeEntity;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GuarantorEntity extends EmployeeEntity {
    private Long guarantorId;
    private String guarantorName;
    private String guarantorRelationship;
    private String guarantorResidentNumber;
    private Long guaranteeAmount;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate guaranteeDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate guaranteeExpirationDate;
    private String guarantorPhoneNumber;


}
