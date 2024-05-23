package org.spring.domain.attendance.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.spring.domain.employee.model.EmployeeEntity;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AttendanceEntity extends EmployeeEntity {
    private Long attendanceId;
    private LocalDate inputDate;
    private String attendanceTypeId;
    private Long feildOrProjectIdLong;
    private LocalDate startDate;
    private LocalDate endDate;
    private Long attendanceDays;
    private Long amount;
    private String summary;

}
