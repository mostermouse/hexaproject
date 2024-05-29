package org.spring.domain.employeedetails.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.spring.domain.employee.model.EmployeeEntity;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RewardPenaltyEntity extends EmployeeEntity {
    private Long rewardPenaltyId;
    private String rewardPenaltyType;
    private String rewardPenaltyName;
    private String rewardPenaltyGiver;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate rewardPenaltyDate;
    private String rewardPenaltyDescription;
    private String remarks2;

}
