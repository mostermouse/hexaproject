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
public class LanguageAbilityEntity extends EmployeeEntity {
    private Long languageAbilityId;
    private String language;
    private String testName;
    private Long officialScore;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate acquisitionDate1;
    private String readingAbility;
    private String writingAbility;
    private String speakingAbility;


}
