package com.quanlyphichungcu.doAn.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quanlyphichungcu.doAn.entity.can_ho;
import com.quanlyphichungcu.doAn.entity.dich_vu_can_ho;
import com.quanlyphichungcu.doAn.repository.canHoRepository;
import com.quanlyphichungcu.doAn.repository.dichVuCanHoRepository;

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

@Controller
@RequestMapping("/admin")
public class dichVuCanHoController {
	@Autowired
	private dichVuCanHoRepository DichVuCanHorepository;

	@Autowired
	private canHoRepository CanHoRepository;

//	@GetMapping
//	public List<dich_vu_can_ho> getAlldich_vu_can_ho() {
//		return DichVuCanHorepository.findAll();
//	}
//	
//	 @GetMapping("/{Can_Ho}/{Dich_Vu}") public Optional<dich_vu_can_ho>
//	 getEnrollmentById(@PathVariable can_ho Can_Ho, @PathVariable dich_vu Dich_Vu)
//	 { dich_vu_can_ho_prikey id = new dich_vu_can_ho_prikey(Can_Ho, Dich_Vu);
//	 return DichVuCanHorepository.findById(id); 
//	 }
	
	@RequestMapping("/canho")
	public String listCanHo(Model model) {
		List<can_ho> list = CanHoRepository.findAll();
		model.addAttribute("list", list);
		return "admin/canho";
	}

	@GetMapping("/{Can_Ho}")
	public String getDSDichVu(Model model, @PathVariable String Can_Ho) {
		Optional<can_ho> ch = CanHoRepository.findById(Can_Ho);
		model.addAttribute("ch", ch);
		model.addAttribute("csh", ch);
		List<dich_vu_can_ho> dv = DichVuCanHorepository.getDichVuByCanHo(Can_Ho);
		model.addAttribute("dv", dv);
		
		return "admin/ctcanho";
	}
}
//		List<Map<String, String>> ds_dv = new ArrayList<>();
//
////		Map<String, String> mapDichVu = new HashMap<>();
////		mapDichVu.put("ma_dich_vu", dv.get(0).getDich_vu().getMa_dich_vu());
////		mapDichVu.put("ten_dich_vu", dv.get(0).getDich_vu().getTen_dich_vu());
////		mapDichVu.put("vat", String.valueOf(dv.get(0).getDich_vu().getVat()));
////		mapDichVu.put("don_gia", String.valueOf(dv.get(0).getDich_vu().getDon_gia()));
////		mapDichVu.put("don_vi", dv.get(0).getDich_vu().getDon_vi());
//
//		for (dich_vu_can_ho item : dv) {
//            Map<String, String> mapDichVu = new HashMap<>();
//            mapDichVu.put("ma_dich_vu", item.getDich_vu().getMa_dich_vu());
//            mapDichVu.put("ten_dich_vu", item.getDich_vu().getTen_dich_vu());
//            mapDichVu.put("vat", String.valueOf(item.getDich_vu().getVat()));
//            mapDichVu.put("don_gia", String.valueOf(item.getDich_vu().getDon_gia()));
//            mapDichVu.put("don_vi", item.getDich_vu().getDon_vi());
//            mapDichVu.put("so_luong", String.valueOf(item.getSo_luong()));
//            ds_dv.add(mapDichVu);
//        }
//		
//		model.addAttribute("ds_dv", ds_dv);

//    @PostMapping
//    public dich_vu_can_ho createEnrollment(@RequestBody dich_vu_can_ho Dich_Vu_Can_Ho) {
//        return repository.save(Dich_Vu_Can_Ho);
//    }

//    @DeleteMapping("/{Can_Ho}/{Dich_Vu}")
//    public void deleteEnrollment(@PathVariable can_ho Can_Ho, @PathVariable dich_vu Dich_Vu) {
//    	dich_vu_can_ho_prikey id = new dich_vu_can_ho_prikey(Can_Ho, Dich_Vu);
//    	repository.deleteById(id);
//    }
