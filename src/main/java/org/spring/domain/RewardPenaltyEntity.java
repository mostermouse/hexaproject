package org.spring.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RewardPenaltyEntity extends EmployeeEntity{
    private Long rewardPenaltyId;
    private String rewardPenaltyType;
    private String rewardPenaltyName;
    private String rewardPenaltyGiver;
    private LocalDate rewardPenaltyDate;
    private String rewardPenaltyDescription;
    private String remarks;

}
