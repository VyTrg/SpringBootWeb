package com.quanlyphichungcu.doAn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import com.quanlyphichungcu.doAn.entity.can_ho;
import com.quanlyphichungcu.doAn.repository.HoaDonRepository;
import com.quanlyphichungcu.doAn.repository.canHoRepository;
import com.quanlyphichungcu.doAn.repository.chuSoHuuRepository;
import com.quanlyphichungcu.doAn.repository.dichVuCanHoRepository;

@Controller
public class HoaDonController {
	@Autowired HoaDonRepository HDRepository;
	
	@Autowired chuSoHuuRepository CSHRepository;
	
	@Autowired dichVuCanHoRepository DV_CHRepository;
	
	@Autowired canHoRepository CHRepository;
	
	@GetMapping("user/hoadon")
	public String thongTinHoaDon(Model model) {
		List<can_ho> ListCanHo =  CHRepository.getCanHoByChuSoHuu("CSH2");
		model.addAttribute("ttHoaDon", HDRepository.findAll());
		model.addAttribute("ttKhachHang",CSHRepository.findById("CSH2"));
//		model.addAttribute("ChiTietDV", DV_CHRepository.getDichVuByCanHo(ListCanHo.get(0).getMa_can_ho());
		return "user/hoadon";
	}
}
