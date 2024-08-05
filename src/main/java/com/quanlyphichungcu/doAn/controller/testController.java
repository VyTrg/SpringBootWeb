package com.quanlyphichungcu.doAn.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quanlyphichungcu.doAn.entity.can_ho;
import com.quanlyphichungcu.doAn.entity.dich_vu_can_ho;
import com.quanlyphichungcu.doAn.repository.HoaDonRepository;
import com.quanlyphichungcu.doAn.repository.canHoRepository;
import com.quanlyphichungcu.doAn.repository.chuSoHuuRepository;
import com.quanlyphichungcu.doAn.repository.dichVuCanHoRepository;

@Controller
public class testController {

	@Autowired HoaDonRepository HDRepository;
	
	@Autowired chuSoHuuRepository CSHRepository;
	
	@Autowired dichVuCanHoRepository DV_CHRepository;
	
	@Autowired canHoRepository CHRepository;
	
	@RequestMapping("/test")
	public String test() {
		// lay cac can ho cua chu so huu
		List<can_ho> ListCanHo =  CHRepository.getCanHoByChuSoHuu("CSH3");
		return "test";
	}
	
	@RequestMapping("/laphoadon/{Can_Ho}")
	public String getHoaDon(Model model, @PathVariable String Can_Ho) {
		Optional<can_ho> ch = CHRepository.findById(Can_Ho);
		model.addAttribute("ch", ch.get());
		model.addAttribute("csh", ch.get().getChuSoHuu());
		List<dich_vu_can_ho> dv = DV_CHRepository.getDichVuByCanHo(Can_Ho);
		model.addAttribute("dv", dv);
		
		return "admin/hoadon";
	}
}

