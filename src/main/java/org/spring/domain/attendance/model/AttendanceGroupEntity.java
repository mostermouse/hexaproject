package org.spring.domain.attendance.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AttendanceGroupEntity {

    private Long attandanceGroupId;
    private String attandanceGroupName;

}
