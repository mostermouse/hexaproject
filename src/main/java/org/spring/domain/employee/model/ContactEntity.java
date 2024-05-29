package org.spring.domain.employee.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ContactEntity extends CompanyEntity{
    private Long personId;
    private String contactName;
    private String conPhoneNumber;
    private String mobileNumber;
    private String email;

}
