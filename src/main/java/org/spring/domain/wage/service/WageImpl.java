package org.spring.domain.wage.service;

import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import org.spring.domain.wage.controller.model.WageRecordRequest;
import org.spring.domain.wage.mapper.WageMapper;
import org.spring.domain.wage.model.WageEntity;
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
	
	//급여대장목록 분류 및 반환
	public List<WageRecordRequest> listWageRecord(Long year){
		
		log.info("listWageRecord..........");

		List<WageEntity> yearWageEntities = mapper.getYearWage(year);
		log.info(yearWageEntities.size() + " wageEntities found");
		List<WageRecordRequest> wageRecordRequests = new ArrayList<>();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM");
        
		for(int j = 1; j <= 12; j++) {
			for(int k = 1; k <= 10; k++) {
				WageRecordRequest wageRecordRequest = new WageRecordRequest();
				int totalCount = 0;
				int totalWage = 0;
				int record = 0;
				for(int i = 0; i < yearWageEntities.size(); i++) {
					if(yearWageEntities.get(i).getWagePaymentDate().getMonthValue() == j ) {
						if( Integer.parseInt(yearWageEntities.get(i).getWagePeriod()) == k) {
							record = i;
							totalCount++;
							totalWage += yearWageEntities.get(i).getWageValue();
						};
					};
				}
				if(totalCount != 0) {
				wageRecordRequest.setYearMonth(yearWageEntities.get(record).getWagePaymentDate().format(formatter));
				wageRecordRequest.setWagePeriod(yearWageEntities.get(record).getWagePeriod());
				wageRecordRequest.setSettlementPeriodStartDate(yearWageEntities.get(record).getSettlementPeriodStartDate());
				wageRecordRequest.setSettlementPeriodEndDate(yearWageEntities.get(record).getSettlementPeriodEndDate());
				wageRecordRequest.setWagePaymentDate(yearWageEntities.get(record).getWagePaymentDate());
				wageRecordRequest.setPaidEmployeeCount((long) totalCount);
				wageRecordRequest.setTotalPaidWage((long) totalWage);
				
				wageRecordRequests.add(wageRecordRequest);
				};
				
			}
		}
		return wageRecordRequests;
	}
}
