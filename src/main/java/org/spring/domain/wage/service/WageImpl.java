package org.spring.domain.wage.service;

import java.time.LocalDate;
import java.time.YearMonth;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.apache.log4j.Logger;
import org.aspectj.ajdt.internal.compiler.ast.AddAtAspectJAnnotationsVisitor;
import org.spring.domain.employee.model.DepartmentEntity;
import org.spring.domain.wage.controller.model.WageRecordDetailsRequest;
import org.spring.domain.wage.controller.model.WageRecordRequest;
import org.spring.domain.wage.mapper.WageMapper;
import org.spring.domain.wage.model.WageEntity;
import org.spring.domain.wage.model.WageTypeEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class WageImpl implements WageService {

	@Setter(onMethod_ = @Autowired)
	private WageMapper mapper;

	@Override
	public List<WageEntity> getWageList() {
		// TODO Auto-generated method stub
		log.info("getWageList...");
		return mapper.getWageList();
	}

	@Override
	public List<WageEntity> getWageTypeList() {
		// TODO Auto-generated method stub
		log.info("getWageTypeList...");
		return mapper.getWageTypeList();
	}

	@Override
	public String getDepartmentNameById(Long departmentId) {
		return mapper.getDepartmentNameById(departmentId);
	}

	@Override
	public String getWageTypeNameById(Long wageTypeId) {
		return mapper.getWageTypeNameById(wageTypeId);
	}

//	@Override
//	public String getNamebyId(Long employeeId) {
//		// TODO Auto-generated method stub
//		return mapper.getNamebyId(employeeId);
//	}

	// 급여대장목록 분류 및 반환
	@Override
	public List<WageRecordRequest> listWageRecord(Long year) {

		final int MONTH = 12;
		final int PERIOD = 10;

		// TODO 급여대장 정렬 시 월 분류는, 정산시작꺼 따오기

		log.info("listWageRecord..........");

		List<WageEntity> yearWageEntities = mapper.getYearWage(year);
		log.info(yearWageEntities.size() + " wageEntities found");
		List<WageRecordRequest> wageRecordRequests = new ArrayList<>();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM");

		for (int j = 1; j <= MONTH; j++) {
			for (int k = 1; k <= PERIOD; k++) {
				WageRecordRequest wageRecordRequest = new WageRecordRequest();
				int totalWage = 0;
				int record = 0;
				List<WageEntity> yearWageEntitiesYearMonthPeriod = new ArrayList<WageEntity>();

				for (int i = 0; i < yearWageEntities.size(); i++) {
					if (yearWageEntities.get(i).getWagePaymentDate().getMonthValue() == j
							&& Integer.parseInt(yearWageEntities.get(i).getWagePeriod()) == k) {
						yearWageEntitiesYearMonthPeriod.add(yearWageEntities.get(i));
						record = i;
						totalWage += yearWageEntities.get(i).getWageValue();
					}
					;
				}

				Long count = yearWageEntitiesYearMonthPeriod.stream().map(WageEntity::getEmployeeId).distinct().count();

				if (count != 0) {
					wageRecordRequest.setYearMonth(yearWageEntities.get(record).getWagePaymentDate().format(formatter));
					wageRecordRequest.setWagePeriod(yearWageEntities.get(record).getWagePeriod());
					wageRecordRequest
							.setSettlementPeriodStartDate(yearWageEntities.get(record).getSettlementPeriodStartDate());
					wageRecordRequest
							.setSettlementPeriodEndDate(yearWageEntities.get(record).getSettlementPeriodEndDate());
					wageRecordRequest.setWagePaymentDate(yearWageEntities.get(record).getWagePaymentDate());
					wageRecordRequest.setPaidEmployeeCount((long) count);
					wageRecordRequest.setTotalPaidWage((long) totalWage);

					wageRecordRequests.add(wageRecordRequest);
				}
				;
			}
		}
		return wageRecordRequests;
	}

	//급여대장 정보반환
	@Override
	public List<String> listWageRecordInfo (Long yearMonth, Long wagePeriod) {
		List<WageRecordDetailsRequest> yearWageEntities = mapper.getYearMonthPeriodWage(yearMonth, wagePeriod);
		List<String> finalReturnList = new ArrayList<String>();
		finalReturnList.add(String.valueOf(yearWageEntities.get(1).getSettlementPeriodStartDate()));
		finalReturnList.add(String.valueOf(yearWageEntities.get(1).getSettlementPeriodEndDate()));
		finalReturnList.add(String.valueOf(yearWageEntities.get(1).getWagePaymentDate()));
		return finalReturnList;
	}
	
	//급여항목 반환
	@Override
	public List<WageTypeEntity> getWageIdTypeList(){
		return mapper.getWageIdType();
	}
	
	//부서 반환
	@Override
	public List<DepartmentEntity> getDepartmentList () {
		return mapper.getDepartment();
	}
	
	// 급여대장 세부목록 분류 및 반환
	@Override
	public List<List<String>> listWageRecordYMP(Long yearMonth, Long wagePeriod) {

		log.info("listWageRecordYMP..........");

		log.info("yearMonth: " + yearMonth);
		log.info("wagePeriod: " + wagePeriod);

		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		List<WageRecordDetailsRequest> yearWageEntities = mapper.getYearMonthPeriodWage(yearMonth, wagePeriod);
		log.info(yearWageEntities.size() + " wageEntities found");

		// 1행에 항목 및 급여종류 저장
		// 2행부터 사원별 정보 저장
		// 사원 숫자만큼 행을 생성하거나 하고, 그 사이즈대로 for문돌리기
		// List로 목록 행 저장, 사원별 정보도 저장
		// 그 리스트들을 새로운 List에 저장

		// 최종반환 List 선언(목록행과 사원정보행을 다 포함한)
		List<List<String>> finalReturnList = new ArrayList<List<String>>();

		// 반환할 자료형 선언, 항목 이름 저장
		final int ROWS = 6;// 급여종류 전 항목 갯수
		List<String> firstRow = new ArrayList<>();
		firstRow.add("사원번호");
		firstRow.add("구분");
		firstRow.add("성명");
		firstRow.add("입사일");
		firstRow.add("부서");
		firstRow.add("직위");

		// 중복되지 않는 급여 종류를 저장하기
		List<WageRecordDetailsRequest> uniqueWageTypes = getUniqueWageTypes(yearWageEntities);
		uniqueWageTypes.sort(Comparator.comparingLong(WageRecordDetailsRequest::getWageTypeId));
		for (int i = 0; i < uniqueWageTypes.size(); i++) {
			firstRow.add(uniqueWageTypes.get(i).getWageTypeName());
		}
		// 마지막에 지급총액 저장
		firstRow.add("지급총액(円)");
		// 항목 행 저장
		finalReturnList.add(firstRow);

		// 마지막 합계 행 선언 및 정보저장
		List<String> lastRow = new ArrayList<>();
		for (int i = 0; i < ROWS + uniqueWageTypes.size() + 1; i++) {
			if (i == 1)
				lastRow.add("합");
			else if (i == 4)
				lastRow.add("계");
			else if (i != 1 && i != 4 && i < ROWS)
				lastRow.add("");
			else
				lastRow.add("0");
		}

		// 항목에 따른, 사원별 정보 저장
		// 중복되지 않은 사원목록 생성 및, 그에 따라 이름 하나씩 비교해가면서 급여정보 저장
		List<WageRecordDetailsRequest> uniqueIds = getUniqueEmployeeIds(yearWageEntities);
		uniqueIds.sort(Comparator.comparingLong(WageRecordDetailsRequest::getEmployeeId));
		log.info("uniqueIds size: " + uniqueIds.size());

		for (int i = 0; i < uniqueIds.size(); i++) {
			// 사원의 반환할 급여 행 생성
			List<String> rowsPersonWage = new ArrayList<String>();
			int total = 0;
			// 5행까지 그냥 데이터 저장, 그 이후 급여정보 저장
			rowsPersonWage.add(String.valueOf(uniqueIds.get(i).getEmployeeId()));
			rowsPersonWage.add(uniqueIds.get(i).getEmploymentType());
			rowsPersonWage.add(uniqueIds.get(i).getKoreanName());
			rowsPersonWage.add(uniqueIds.get(i).getHireDate().format(formatter));
			rowsPersonWage.add(uniqueIds.get(i).getDepartmentName());
			rowsPersonWage.add(uniqueIds.get(i).getPositionName());

			// i번째 사원의 급여정보를 새로운 목록에 저장
			List<WageRecordDetailsRequest> onePersonsWageInfo = new ArrayList<WageRecordDetailsRequest>();
			for (int j = 0; j < yearWageEntities.size(); j++) {
				if (uniqueIds.get(i).getEmployeeId() == yearWageEntities.get(j).getEmployeeId()) {
					onePersonsWageInfo.add(yearWageEntities.get(j));
				}
			}

			// i번째 사원의 급여정보를, 급여 종류와 비교해가며 저장, 마지막엔 총액을 저장
			// i번째 사원의 이름과, 연월차수 급여정보의 이름이 같고,
			// 급여종류 목록과, 연월차수 급여정보의 급여종류 이름이 같으면 ,
			// 그에 대한 금액을 저장, 총합 금액에 추가
			// 그렇지 않으면, 0 저장
			for (int k = ROWS; k < firstRow.size() - 1; k++) {
				boolean found = false; // 급여 정보가 있는지 여부를 확인하는 변수

				// 사원의 급여 정보와 급여 종류를 비교하여 급여 정보가 존재하는지 확인
				for (int j = 0; j < onePersonsWageInfo.size(); j++) {
					if (uniqueIds.get(i).getEmployeeId() == onePersonsWageInfo.get(j).getEmployeeId()
							&& firstRow.get(k).equals(onePersonsWageInfo.get(j).getWageTypeName())) {
						rowsPersonWage.add(String.valueOf(onePersonsWageInfo.get(j).getWageValue()));
						String temp = lastRow.get(k);
						lastRow.set(k,
								String.valueOf((Long.parseLong(temp) + onePersonsWageInfo.get(j).getWageValue())));
						total += onePersonsWageInfo.get(j).getWageValue();
						found = true; // 급여 정보를 찾았음을 표시
						break; // 해당 사원의 해당 급여 정보를 찾았으므로 루프 종료
					}
				}

				// 급여 정보가 없으면 0을 추가하여 무결성 체크 반영
				if (!found) {
					rowsPersonWage.add("0");
				}
			}

			// i번째 사원의 급여총합 저장
			rowsPersonWage.add(String.valueOf(total) + "円");

			// i번째 사원의 급여 행을 최종반환형에 저장
			finalReturnList.add(rowsPersonWage);
		}
		;

		// 지급총액 합계 계산
		int totalTotal = 0;
		for (int i = ROWS; i < ROWS + uniqueWageTypes.size(); i++)
			totalTotal += Long.parseLong(lastRow.get(i));
		lastRow.set(firstRow.size() - 1, String.valueOf(totalTotal) + "円");

		// 합계행 저장
		finalReturnList.add(lastRow);

		// 결과 콘솔에 테스트 출력
		List<String> firstRow2 = finalReturnList.get(0);
		for (int i = 0; i < firstRow2.size(); i++) {
			if (i != 3)
				System.out.print(firstRow2.get(i) + "\t");
			if (i == 3)
				System.out.print(firstRow2.get(i) + "\t\t");
		}
		System.out.println();
		for (int i = 1; i < finalReturnList.size() - 1; i++) {
			List<String> row = finalReturnList.get(i);
			for (int j = 0; j < row.size(); j++) {
				if (j == 3) { // 입사일의 위치를 확인하고, 출력 포맷을 변경
					String hireDate = row.get(j);
					LocalDate date = LocalDate.parse(hireDate, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
					System.out.print(date.format(DateTimeFormatter.ofPattern("yy-MM-dd")) + "\t");
				} else {
					System.out.print(row.get(j) + "\t");
				}
			}
			System.out.println();
		}
		for (int i = 0; i < lastRow.size(); i++) {
			if (i != 3)
				System.out.print(lastRow.get(i) + "\t");
			if (i == 3)
				System.out.print(lastRow.get(i) + "\t\t");
		}
		System.out.println();

		// 최종목록 반환
		return finalReturnList;

	}

	// 사원별 급여대장 분류 및 반환
	@Override
	public List<List<String>> listWageRecordEMP(String settlementPeriodStartDate, String settlementPeriodEndDate,
			Long employeeId) {

		log.info("listWageRecordEMP..........");

		// 최종반환 List 선언(목록행과 사원정보행을 다 포함한)
		List<List<String>> finalReturnList = new ArrayList<List<String>>();

		// 반환할 행 선언, 항목 이름 저장
		List<String> firstRow = new ArrayList<>();
		firstRow.add("급여월(차수)");

		// 연,월,차수에 해당하는 급여정보 불러오기
		List<WageRecordDetailsRequest> WageValues = mapper.getWageValue(stringToLongYMDtoYM(settlementPeriodStartDate),
				stringToLongYMDtoYM(settlementPeriodEndDate), employeeId);
		log.info("WageValues: " + WageValues.size());

		// 중복되지 않는 연,월,차수 저장하기
		List<WageRecordDetailsRequest> uniqueYearMonthPeriods = mapper.getYearMonthPeriod(
				stringToLongYMDtoYM(settlementPeriodStartDate), stringToLongYMDtoYM(settlementPeriodEndDate), employeeId);
		log.info("uniqueYearMonthPeriods: " + uniqueYearMonthPeriods.size());

		// 중복되지 않는 급여 종류를 저장하기
		List<WageRecordDetailsRequest> uniqueWageTypes = mapper.getWageType(stringToLongYMDtoYM(settlementPeriodStartDate),
				stringToLongYMDtoYM(settlementPeriodEndDate), employeeId);
		log.info("uniqueWageTypes: " + uniqueWageTypes);
		for (int i = 0; i < uniqueWageTypes.size(); i++) {
			firstRow.add(uniqueWageTypes.get(i).getWageTypeName());
			log.info(uniqueWageTypes.get(i).getWageTypeName());
		}

		// 마지막에 지급총액 저장
		firstRow.add("지급총액(円)");

		// 최종반환 List에 항목 행 저장
		finalReturnList.add(firstRow);

		// 마지막 합계 행 선언 및 정보저장
		List<String> lastRow = new ArrayList<>();
		lastRow.add("합계");

		// 1.년월 행
		for (int i = 0; i < uniqueYearMonthPeriods.size(); i++) {
			// 한 줄씩 저장할 행
			List<String> row = new ArrayList<String>();
			// 행마다의 급여 총합
			int rowTotal = 0;

			// 첫 열에 연,월,차수 저장
			row.add(uniqueYearMonthPeriods.get(i).getSettlementPeriodStartDate()
					.format(DateTimeFormatter.ofPattern("yyyy-MM")) + "("
					+ uniqueYearMonthPeriods.get(i).getWagePeriod() + ")");

			// 2.급여 종류에 맞게 행에 급여 기입
			for (int j = 0; j < uniqueWageTypes.size(); j++) {
				// 급여 존재여부
				boolean found = false;

				// 만약 연월차수행과, 급여종류에 맞는 급여값이면, 넣는다., 총합 계산한다.
				for (int k = 0; k < WageValues.size(); k++) {
					if (uniqueYearMonthPeriods.get(i).getSettlementPeriodStartDate()
							.equals(WageValues.get(k).getSettlementPeriodStartDate())
							&& uniqueYearMonthPeriods.get(i).getWagePeriod().equals(WageValues.get(k).getWagePeriod())
							&& uniqueWageTypes.get(j).getWageTypeName().equals(WageValues.get(k).getWageTypeName())) {
						row.add(String.valueOf(WageValues.get(k).getWageValue()));
						rowTotal += WageValues.get(k).getWageValue();
						found = true;
						break;
					}
				}

				// 급여 정보가 없으면 0을 넣는다.
				if (!found) {
					row.add("0");
				}
			}

			// 마지막 열에 총합 저장
			row.add(String.valueOf(rowTotal));
			// 최종반환형에 행 추가
			finalReturnList.add(row);
		}

		// 마지막 종합 행 계산, 추가
		List<String> columnTotal = new ArrayList<String>();
		columnTotal.add("총합");
		for (int i = 1; i < finalReturnList.get(0).size(); i++) {
			columnTotal.add("0");
		}
		for (int i = 1; i < finalReturnList.size(); i++) {
			for (int j = 1; j < finalReturnList.get(0).size(); j++) {
				String temp = columnTotal.get(j);
				columnTotal.set(j,
						String.valueOf((Long.parseLong(temp) + Long.parseLong(finalReturnList.get(i).get(j)))));
				;
			}
		}
		for (int i = 1; i < finalReturnList.size(); i++) {
			String temp = finalReturnList.get(i).get(finalReturnList.get(0).size()-1);
			finalReturnList.get(i).set(finalReturnList.get(0).size()-1, temp + "(円)");
		}


		// 반환
		return finalReturnList;
	}

	// 항목별 급여대장 분류 및 반환
	@Override
	public List<List<String>> listWageRecordWT(String settlementPeriodStartDate, String settlementPeriodEndDate,
			Long wageTypeId) {

		log.info("listWageRecordWT..........");

		final int COLUMNS = 4;
		// 최종반환 List 선언(목록행과 사원정보행을 다 포함한)
		List<List<String>> finalReturnList = new ArrayList<List<String>>();

		// 반환할 행 선언, 항목 이름 저장
		List<String> firstRow = new ArrayList<>();
		firstRow.add("구분");
		firstRow.add("성명");
		firstRow.add("부서");
		firstRow.add("직위");

		// 기간,항목별 직원목록 불러오기
		List<WageRecordDetailsRequest> uniqueEmployees = mapper.getWageTypeEmployeeInfo(
				stringToLongYMtoYM(settlementPeriodStartDate), stringToLongYMtoYM(settlementPeriodEndDate), wageTypeId);
		log.info(uniqueEmployees.size() + " uniqueEmployees found");
		// 1번째 열에 저장하기

		// 기간,항목별 연월차수 불러오기
		List<WageRecordDetailsRequest> uniqueYearMonthPeriods2 = mapper.getWageTypeYearMonthPeriod(
				stringToLongYMtoYM(settlementPeriodStartDate), stringToLongYMtoYM(settlementPeriodEndDate), wageTypeId);
		log.info(uniqueYearMonthPeriods2.size() + " uniqueYearMonthPeriods2 found");
		for (int i = 0; i < uniqueYearMonthPeriods2.size(); i++) {
			firstRow.add(String
					.valueOf(uniqueYearMonthPeriods2.get(i).getSettlementPeriodStartDate()
							.format(DateTimeFormatter.ofPattern("yyyy-MM")))
					+ "(" + String.valueOf(uniqueYearMonthPeriods2.get(i).getWagePeriod() + ")"));
		}

		// 기간,항목별 급여정보 불러오기
		List<WageRecordDetailsRequest> WageValues2 = mapper.getWageTypeValue(stringToLongYMtoYM(settlementPeriodStartDate),
				stringToLongYMtoYM(settlementPeriodEndDate), wageTypeId);
		log.info(WageValues2.size() + " WageValues2 found");

		// 마지막에 지급총액 저장
		firstRow.add("지급총액(円)");

		// 최종반환 List에 항목 행 저장
		finalReturnList.add(firstRow);

		// 마지막 합계 행 선언 및 정보저장
		List<String> lastRow = new ArrayList<>();
		lastRow.add("합계");

		// 1.년월 행
		for (int i = 0; i < uniqueEmployees.size(); i++) {
			// 한 줄씩 저장할 행
			List<String> row = new ArrayList<String>();
			// 행마다의 급여 총합
			int rowTotal = 0;

			// 첫 열에 연,월,차수 저장
			row.add(uniqueEmployees.get(i).getEmploymentType());
			row.add(uniqueEmployees.get(i).getKoreanName());
			row.add(uniqueEmployees.get(i).getDepartmentName());
			row.add(uniqueEmployees.get(i).getPositionName());

			// 2.급여 종류에 맞게 행에 급여 기입
			for (int j = 0; j < uniqueYearMonthPeriods2.size(); j++) {
				// 급여 존재여부
				boolean found = false;

				// 만약 직원ID, 연월, 차수에 맞는 급여값이면, 넣는다, 총합 계산한다.
				for (int k = 0; k < WageValues2.size(); k++) {
					if (uniqueEmployees.get(i).getEmployeeId() == WageValues2.get(k).getEmployeeId()
							&& uniqueYearMonthPeriods2.get(j).getSettlementPeriodStartDate()
									.equals(WageValues2.get(k).getSettlementPeriodStartDate())
							&& uniqueYearMonthPeriods2.get(j).getWagePeriod()
									.equals(WageValues2.get(k).getWagePeriod())) {
						row.add(String.valueOf(WageValues2.get(k).getWageValue()));
						rowTotal += WageValues2.get(k).getWageValue();
						found = true;
						break;
					}
				}
				// 급여 정보가 없으면 0을 넣는다.
				if (!found) {
					row.add("0");
				}
			}

			// 마지막 열에 총합 저장
			row.add(String.valueOf(rowTotal));
			// 최종반환형에 행 추가
			finalReturnList.add(row);
		}

		// 마지막 종합 행 계산, 추가
		List<String> columnTotal = new ArrayList<String>();
		columnTotal.add("");
		columnTotal.add("총");
		columnTotal.add("합");
		columnTotal.add("");

		for (int i = COLUMNS; i < finalReturnList.get(0).size(); i++) {
			columnTotal.add("0");
		}
		for (int i = 1; i < finalReturnList.size(); i++) {
			for (int j = COLUMNS; j < finalReturnList.get(0).size(); j++) {
				String temp = columnTotal.get(j);
				columnTotal.set(j,
						String.valueOf((Long.parseLong(temp) + Long.parseLong(finalReturnList.get(i).get(j)))));
			}
		}
		finalReturnList.add(columnTotal);
		for (int i = 1; i < finalReturnList.size(); i++) {
			String temp = finalReturnList.get(i).get(finalReturnList.get(0).size()-1);
			finalReturnList.get(i).set(finalReturnList.get(0).size()-1, temp + "(円)");
		}

		// 반환
		return finalReturnList;
	}

	public List<WageRecordDetailsRequest> getUniqueWageTypes(List<WageRecordDetailsRequest> wageRecords) {
		Set<String> seenWageTypes = new HashSet<>();
		return wageRecords.stream().filter(record -> seenWageTypes.add(record.getWageTypeName()))
				.collect(Collectors.toList());
	}

	public List<WageRecordDetailsRequest> getUniqueEmployeeIds(List<WageRecordDetailsRequest> wageRecords) {
		Set<Long> seenEmployeeIds = new HashSet<>();
		return wageRecords.stream().filter(record -> seenEmployeeIds.add(record.getEmployeeId()))
				.collect(Collectors.toList());
	}

	public List<WageRecordDetailsRequest> getUniquePeriods(List<WageRecordDetailsRequest> wageRecords) {
		Set<String> seenEmployeePeriods = new HashSet<>();
		return wageRecords.stream().filter(record -> seenEmployeePeriods.add(record.getWagePeriod()))
				.collect(Collectors.toList());
	}

	public Long stringToLongYMDtoYM(String dateStr) {
		LocalDate date = LocalDate.parse(dateStr, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
		String yyyymmStr = date.format(DateTimeFormatter.ofPattern("yyyyMM"));
		Long yyyymm = Long.parseLong(yyyymmStr);
		return yyyymm;
	}
	
	public Long stringToLongYMtoYM(String dateStr) {
		YearMonth date = YearMonth.parse(dateStr, DateTimeFormatter.ofPattern("yyyy-MM"));
		String yyyymmStr = date.format(DateTimeFormatter.ofPattern("yyyyMM"));
		Long yyyymm = Long.parseLong(yyyymmStr);
		return yyyymm;
	}

}
