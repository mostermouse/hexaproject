package org.spring.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class WageTypeEntity {

	private Long wageTypeId;
	private String wageTypeName;
	private String numberCut;
	private String attendanceOrLumpsum;
	private String attendanceOrLumpsumContent;
	private Character usage;
}
