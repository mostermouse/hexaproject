package org.spring.domain.attendance.controller;

import java.util.List;

import org.spring.domain.attendance.model.AttendanceEntity;
import org.spring.domain.attendance.service.AttendanceService2;
import org.spring.domain.employee.model.DepartmentEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
public class AttendanceController {

    @Autowired
    private AttendanceService2 attendanceService2;

    // 모든 출석 정보를 조회합니다.
	@GetMapping("/diligenceMnt")
	public String getAllAttendance(Model model) {
		List<DepartmentEntity> attendanceList = attendanceService2.getAllAttendance();
		model.addAttribute("attendancelist", attendanceList);
		log.info("Attendance List Model: " + model.toString());
		return "managementOfAtt/managementOfAttendance";
	}
    

    
	/*
	 * // 특정 ID의 출석 정보를 조회합니다.
	 * 
	 * @GetMapping("/{id}") public void getAttendanceById(Model model) {
	 * AttendanceEntity attendance = attendanceService2.getAttendanceById(null);
	 * model.addAttribute("attendance", attendance); }
	 */
    
    // 새로운 출석 정보를 생성합니다.
    @PostMapping("/addDiligenceMnt")
    public String createAttendance(@ModelAttribute AttendanceEntity attendance , Model model) {

        attendanceService2.createAttendance(attendance);
		log.info("Attendance created: " + model.toString());
        return "redirect:/diligenceMnt";
    }

	/*
	 * // 특정 ID의 출석 정보를 업데이트합니다.
	 * 
	 * @PutMapping("/{id}") public ResponseEntity<Void>
	 * updateAttendance(@PathVariable Long id) {
	 * attendanceService2.updateAttendance(id); return
	 * ResponseEntity.status(204).build(); }
	 * 
	 * // 특정 ID의 출석 정보를 삭제합니다.
	 * 
	 * @DeleteMapping("/{id}") public ResponseEntity<Void>
	 * deleteAttendance(@PathVariable Long id) {
	 * attendanceService2.deleteAttendance(id); return
	 * ResponseEntity.status(204).build(); // }
	 */
}
