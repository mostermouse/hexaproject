package org.spring.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TrainingEntity extends EmployeeEntity{
    private Long tarainingId;
    private String tarainingType;
    private String tarainingName;
    private LocalDate tarainingStartDate;
    private LocalDate tarainingEndDate;
    private String trainingOrganization;
    private Long trainingCost;
    private Long refundableTrainingCost;


}
