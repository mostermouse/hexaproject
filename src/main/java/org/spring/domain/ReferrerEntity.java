package org.spring.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReferrerEntity extends EmployeeEntity{
    private Long referrerId;
    private String referrerName;
    private String referrerRelationship;
    private String referrerCompanyName;
    private String referrerPosition;
    private String referrerPhoneNumber;

}
