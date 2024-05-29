package org.spring.domain.attendance.model;

import java.time.LocalDate;

import org.spring.domain.employee.model.EmployeeEntity;
import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AttendanceEntity extends EmployeeEntity {
    private Long attendanceId;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate inputDate;
    private String attendanceTypeId;
    private Long feildOrProjectId;
    @DateTimeFormat(pattern = "yyyy-MM-dd")	
    private LocalDate startDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")	
    private LocalDate endDate;
    private Long attendanceDays;
    private Long amount;
    private String summary;

}
