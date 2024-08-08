package com.quanlyphichungcu.doAn.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quanlyphichungcu.doAn.entity.ChuSoHuu;
import com.quanlyphichungcu.doAn.entity.can_ho;
import com.quanlyphichungcu.doAn.entity.nhan_vien;
import com.quanlyphichungcu.doAn.repository.canHoRepository;
import com.quanlyphichungcu.doAn.repository.chuSoHuuRepository;
import com.quanlyphichungcu.doAn.repository.nhanVienRepository;




@Controller
@RequestMapping("/admin")
public class ThongTinController {
	
	@Autowired
	private nhanVienRepository NhanVienRepository;
	
	@Autowired
	private chuSoHuuRepository ChuSoHuuRepository;
	
	@Autowired
	private canHoRepository CanHoRepository;
	
	@RequestMapping("/thongtin")
	public String listThongTin(Model model) {
		
		List<nhan_vien> nv = NhanVienRepository.findAll();
		model.addAttribute("nv", nv);
		
		List<ChuSoHuu> csh = ChuSoHuuRepository.findAll();
		model.addAttribute("csh", csh);
		return "admin/thongtin";
	}
	
	@GetMapping("/nv/{id}")
	public String getNhanVienById(Model model, @PathVariable("id") String id){
		Optional<nhan_vien> nv = NhanVienRepository.findById(id);
		model.addAttribute("nv", nv.get());
		return "admin/nhanvien";
	}
	
	@GetMapping("/csh/{id}")
	public String getChuSoHuuById(Model model, @PathVariable("id") String id){
		Optional<ChuSoHuu> csh = ChuSoHuuRepository.findById(id);
		model.addAttribute("csh", csh.get());
		List<can_ho> ch = CanHoRepository.getCanHoByChuSoHuu(id);
		model.addAttribute("ch", ch);
		return "admin/chusohuu";
	}
	
}

	
	
	
	

	
	

