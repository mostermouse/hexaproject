package org.spring.domain.employee.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DependentsEntity extends EmployeeEntity {

    private Long dependentId;
    private String relationship;
    private String parentsName;
    private String foreignOrDomestic1;
    private String parentsNumber1;
    private String parentsNumber2;


}
