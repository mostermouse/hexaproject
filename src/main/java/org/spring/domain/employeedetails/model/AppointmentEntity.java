package org.spring.domain.employeedetails.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.spring.domain.employee.model.EmployeeEntity;

import java.time.LocalDate;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AppointmentEntity extends EmployeeEntity {
    private Long appointmentId;
    private String appointmentType;
    private LocalDate appointmentDate;
    private String department;
    private String position;
    private String positionType;
    private String remarks;


}
