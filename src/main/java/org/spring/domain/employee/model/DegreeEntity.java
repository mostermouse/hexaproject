package org.spring.domain.employee.model;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DegreeEntity extends EmployeeEntity {
    private Long degreeId;
    private String graduate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate admissionDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate graduationDate;
    private String schoolName;
    private String major;
    private String completion;


}
