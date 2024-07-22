package com.quanlyphichungcu.doAn.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.quanlyphichungcu.doAn.entity.can_ho;
import com.quanlyphichungcu.doAn.entity.dich_vu;
import com.quanlyphichungcu.doAn.entity.dich_vu_can_ho;
import com.quanlyphichungcu.doAn.entity.dich_vu_can_ho_prikey;
import com.quanlyphichungcu.doAn.repository.dichVuCanHoRepository;
import com.quanlyphichungcu.doAn.service.dichVuCanHoService;

//@Controller
//public class dichVuCanHoController {
//	@Autowired
//	private dichVuCanHoRepository repository;
//	
//	@GetMapping("/testdichvucanho")
//	@ResponseBody
//	public List<com.quanlyphichungcu.doAn.entity.dich_vu_can_ho> dich_vu_can_ho() {
//		return repository.findAll();
//	}
//	
//}

@RestController
@RequestMapping("/dichvucanho")
public class dichVuCanHoController {
	@Autowired
	private dichVuCanHoRepository repository;
	
	@Autowired
	private dichVuCanHoService service;
	
	@GetMapping
	public List<dich_vu_can_ho> getAlldich_vu_can_ho() {
		return repository.findAll();
	}
	
	 @GetMapping("/{Can_Ho}/{Dich_Vu}") public Optional<dich_vu_can_ho>
	 getEnrollmentById(@PathVariable can_ho Can_Ho, @PathVariable dich_vu Dich_Vu)
	 { dich_vu_can_ho_prikey id = new dich_vu_can_ho_prikey(Can_Ho, Dich_Vu);
	 return repository.findById(id); 
	 }
	 
	 @GetMapping("/{Can_Ho}") 
	 public List<dich_vu_can_ho>
	 getEnrollmentById(@PathVariable String Can_Ho) {
	 return service.findDichVuByIdCanHo(Can_Ho);
	 }
	 

//    @PostMapping
//    public dich_vu_can_ho createEnrollment(@RequestBody dich_vu_can_ho Dich_Vu_Can_Ho) {
//        return repository.save(Dich_Vu_Can_Ho);
//    }

//    @DeleteMapping("/{Can_Ho}/{Dich_Vu}")
//    public void deleteEnrollment(@PathVariable can_ho Can_Ho, @PathVariable dich_vu Dich_Vu) {
//    	dich_vu_can_ho_prikey id = new dich_vu_can_ho_prikey(Can_Ho, Dich_Vu);
//    	repository.deleteById(id);
//    }
}
