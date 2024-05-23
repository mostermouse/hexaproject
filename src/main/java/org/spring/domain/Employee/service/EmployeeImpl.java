package org.spring.domain.Employee.service;

import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.spring.domain.Employee.model.EmployeeEntity;
import org.spring.domain.wage.model.WageEntity;
import org.spring.domain.wage.model.WageRecordRequest;
import org.spring.domain.Employee.mapper.EmpMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class EmployeeImpl implements EmployeeService{

    @Setter(onMethod_ = @Autowired)
    private EmpMapper mapper;

    //사원현황 인원수
	@Override
	public Map<String, Long> getEmployeeCount() {

		log.info("getEmployeeCount..........");
		
		Map<String, Long> counts = new HashMap<>();
		counts.put("TotalEmployeeCount", mapper.getTotalEmployeeCount());
		counts.put("FulltimeEmployeeCount", mapper.getFulltimeEmployeeCount());
		counts.put("contractEmployeeCount", mapper.getContractEmployeeCount());
		counts.put("temporaryEmployeeCount", mapper.getTemporaryEmployeeCount());
		counts.put("dailyWorkerCount", mapper.getDailyWorkerCount());
		
		return counts;
	}
	
	//급여현황
	@Override
	public List<WageRecordRequest> listWageRecord(Long year) {
		
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

    @Override
    public List<EmployeeEntity> getAllEmployee() {
        log.info("getEmployee..........");
        return mapper.getAllEmployee();
    }


    @Override
    public long countByStatusEmployed() {
        return mapper.countByStatusEmployed();
    }








    @Override
    public long countByEmploymentTypeRegular() {
        return mapper.countByEmploymentTypeRegular();
    }

    @Override
    public long countByEmploymentTypeContract() {
        return mapper.countByEmploymentTypeContract();
    }

    @Override
    public long countByEmploymentTypeTemporary() {
        return mapper.countByEmploymentTypeTemporary();
    }

    @Override
    public long countByEmploymentTypeDispatched() {
        return mapper.countByEmploymentTypeDispatched();
    }

    @Override
    public long countByEmploymentTypeAppointed() {
        return mapper.countByEmploymentTypeAppointed();
    }

    @Override
    public long countByEmploymentTypeDaily() {
        return mapper.countByEmploymentTypeDaily();
    }

    @Override
    public long countByStatusResigned() {
        return mapper.countByStatusResigned();
    }

    @Override
    public long countAllEmployees() {
        return mapper.countAllEmployees();
    }
}

