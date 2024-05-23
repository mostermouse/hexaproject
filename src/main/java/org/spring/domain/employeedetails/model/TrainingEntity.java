package org.spring.domain.employeedetails.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.spring.domain.Employee.model.EmployeeEntity;

import java.time.LocalDate;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TrainingEntity extends EmployeeEntity {
    private Long trainingId;
    private String trainingType;
    private String trainingName;
    private LocalDate trainingStartDate;
    private LocalDate trainingEndDate;
    private String trainingOrganization;
    private Long trainingCost;
    private Long refundableTrainingCost;


}
