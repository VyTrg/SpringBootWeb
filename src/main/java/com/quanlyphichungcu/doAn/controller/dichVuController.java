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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.quanlyphichungcu.doAn.entity.can_ho;
import com.quanlyphichungcu.doAn.entity.dich_vu;
import com.quanlyphichungcu.doAn.repository.dichVuRepository;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/admin")
public class dichVuController {
	@Autowired
	private dichVuRepository DichVuRepository;
	
	@RequestMapping("/dichvu")
	public String listDichVu(Model model) {
		
		List<dich_vu> dv = DichVuRepository.findAll();
		model.addAttribute("dv", dv);
		return "admin/dichvu";
	}
	
	@RequestMapping(value = "/dichvu/create", method = RequestMethod.POST)
	public String create(HttpServletRequest request,
						Model model,
						RedirectAttributes param) {
		try {
			dich_vu newDichVu = new dich_vu();
			
			newDichVu.setTen_dich_vu(request.getParameter("ten_dich_vu"));
			newDichVu.setMa_dich_vu("**");
			newDichVu.setVat(Integer.parseInt(request.getParameter("vat")));
			newDichVu.setDon_gia(Integer.parseInt(request.getParameter("don_gia")));
			newDichVu.setDon_vi(request.getParameter("don_vi"));
			newDichVu.setTra_truoc(Integer.parseInt(request.getParameter("tra_truoc")));
			DichVuRepository.save(newDichVu);
			param.addAttribute("state","dathem");
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			param.addAttribute("state","chuathem");
		}
		return "redirect:/admin/dichvu";
	}
	
	@RequestMapping(value = "/dichvu/edit", method = RequestMethod.POST)
	public String edit(HttpServletRequest request,
						Model model,
						RedirectAttributes param) {
		try {
			dich_vu DichVu = DichVuRepository.findById(request.getParameter("ma_dich_vu")).get();
			
			DichVu.setTen_dich_vu(request.getParameter("ten_dich_vu"));
			DichVu.setVat(Integer.parseInt(request.getParameter("vat")));
			DichVu.setDon_gia(Integer.parseInt(request.getParameter("don_gia")));
			DichVu.setDon_vi(request.getParameter("don_vi"));
			DichVu.setTra_truoc(Integer.parseInt(request.getParameter("tra_truoc")));
			param.addAttribute("state","dasua");
			DichVuRepository.save(DichVu);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			param.addAttribute("state","chuasua");
		}
		return "redirect:/admin/dichvu";
	}
	
	@RequestMapping(value = "/dichvu/remove", method = RequestMethod.POST)
	@ResponseBody
	public String remove(HttpServletRequest request,
						Model model) {
		String param = "*****";
		try {
			// tim dv
			dich_vu DichVu = DichVuRepository.findById(request.getParameter("ma_dich_vu")).get();
			// xoa dv
			DichVuRepository.delete(DichVu);
			param = "daxoa";
			
		} catch (Exception e) {
			// TODO: handle exception
			param = "chuaxoa";
			System.out.println(param);
		}
		return param;
	}
}
