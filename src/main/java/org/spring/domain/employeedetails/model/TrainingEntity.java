package org.spring.domain.employeedetails.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.spring.domain.employee.model.EmployeeEntity;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TrainingEntity extends EmployeeEntity {
    private Long trainingId;
    private String trainingType;
    private String trainingName;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate trainingStartDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate trainingEndDate;
    private String trainingOrganization;
    private Long trainingCost;
    private Long refundableTrainingCost;


}
