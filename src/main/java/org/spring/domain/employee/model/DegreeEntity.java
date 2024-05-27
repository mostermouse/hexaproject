package org.spring.domain.employee.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DegreeEntity extends EmployeeEntity {
    private String degreeId;
    private String gradeDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate admissionDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate graduationDate;
    private String schoolName;
    private String major;
    private String completion;


}
