package com.quanlyphichungcu.doAn.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quanlyphichungcu.doAn.entity.ChuSoHuu;
import com.quanlyphichungcu.doAn.repository.canHoRepository;
import com.quanlyphichungcu.doAn.repository.chuSoHuuRepository;
import com.quanlyphichungcu.doAn.repository.dichVuRepository;

import org.springframework.web.bind.annotation.RequestParam;




@Controller
public class chuSoHuuController {
	@Autowired chuSoHuuRepository CSHRepository;
	
	
	@Autowired canHoRepository CanHoRepository;
	
	@Autowired dichVuRepository dichVuRepository;

	@GetMapping("/user/thongtincanho")
	public String getMethodName(Model model) {
		model.addAttribute("chusohuu", CanHoRepository.getCanHoByChuSoHuu("CSH4"));
		return "user/thongtincanho";
	}
	
	@GetMapping("/user/dangkidichvu")
	public String getThongTinDichVu(Model model) {
		model.addAttribute("dichvu", dichVuRepository.findAll());
		return "/user/dangkidichvu";
	}
	

}
