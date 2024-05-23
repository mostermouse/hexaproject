package org.spring.domain.employeedetails.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.spring.domain.Employee.model.EmployeeEntity;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class LanguageAbilityEntity extends EmployeeEntity {
    private Long languageAbilityId;
    private String language;
    private String testName;
    private Long officialScore;
    private LocalDate acquisitionDate;
    private String readingAbility;
    private String writingAbility;
    private String speakingAbility;


}
