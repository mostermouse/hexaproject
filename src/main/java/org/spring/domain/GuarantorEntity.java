package org.spring.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GuarantorEntity extends EmployeeEntity{
    private Long guarantorId;
    private String guarantorName;
    private String guarantorRelationship;
    private String guarantorResidentNumber;
    private Long guaranteeAmount;
    private LocalDate guaranteeDate;
    private LocalDate guaranteeExpirationDate;
    private String guarantorPhoneNumber;


}
