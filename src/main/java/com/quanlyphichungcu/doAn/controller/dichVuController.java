package com.quanlyphichungcu.doAn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quanlyphichungcu.doAn.entity.can_ho;
import com.quanlyphichungcu.doAn.entity.dich_vu;
import com.quanlyphichungcu.doAn.repository.dichVuRepository;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/admin")
public class dichVuController {
	@Autowired
	private dichVuRepository DichVuRepository;
	
	@GetMapping("/testdichvu")
	@ResponseBody
	public List<dich_vu> dich_vu() {
		return DichVuRepository.findAll();
	}
	
	@RequestMapping("/dichvu")
	public String listDichVu(Model model) {
		
		List<dich_vu> dv = DichVuRepository.findAll();
		model.addAttribute("dv", dv);
		return "admin/dichvu";
	}
	@RequestMapping(value = "/dichvu/create", method = RequestMethod.POST)
	public String create(HttpServletRequest request,
						Model model) {
		dich_vu newDichVu = new dich_vu();
		
		newDichVu.setTen_dich_vu(request.getParameter("ten_dich_vu"));
		newDichVu.setMa_dich_vu(request.getParameter("ma_dich_vu"));
		newDichVu.setVat(Integer.parseInt(request.getParameter("vat")));
		newDichVu.setDon_gia(Integer.parseInt(request.getParameter("don_gia")));
		newDichVu.setDon_vi(request.getParameter("don_vi"));
		DichVuRepository.save(newDichVu);
		return "redirect:/admin/dichvu";
	}
	
}
