package org.spring.domain.attendance.controller;

import org.spring.domain.attendance.model.AttendanceEntity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class AttendanceEntityRequest extends AttendanceEntity{
    private String  attendanceTypeName;
    private String departmentName;
    private String  positionName;
}

