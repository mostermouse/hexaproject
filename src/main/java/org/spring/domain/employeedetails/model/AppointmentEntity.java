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
public class AppointmentEntity extends EmployeeEntity {
    private Long appointmentId;
    private String appointmentType;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate appointmentDate;
    private Long departmentId;
    private Long positionId;
    private String positionType;
    private String remarks3;


}
