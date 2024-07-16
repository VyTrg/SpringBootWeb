package com.quanlyphichungcu.doAn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quanlyphichungcu.doAn.entity.HoaDon;


@Controller
public class HoaDonController {
	@Autowired HoaDon hoaDon;
	
	@GetMapping("/HoaDon")
	public String GetHoaDon(Model model) {
//		model.addAttribute(hoaDon);
		return new String();
	}
	
}
