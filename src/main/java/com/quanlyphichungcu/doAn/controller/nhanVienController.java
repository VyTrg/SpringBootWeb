package com.quanlyphichungcu.doAn.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quanlyphichungcu.doAn.entity.ChuSoHuu;
import com.quanlyphichungcu.doAn.entity.can_ho;
import com.quanlyphichungcu.doAn.entity.nhan_vien;
import com.quanlyphichungcu.doAn.repository.canHoRepository;
import com.quanlyphichungcu.doAn.repository.chuSoHuuRepository;
import com.quanlyphichungcu.doAn.repository.nhanVienRepository;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quanlyphichungcu.doAn.entity.nhan_vien;
import com.quanlyphichungcu.doAn.repository.nhanVienRepository;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;





@Controller
@RequestMapping("/admin")
public class nhanVienController {
	
	
	@Autowired
	private nhanVienRepository nhan_vien_repo;
	
	@Autowired 
	private chuSoHuuRepository chu_so_huu_repo;
	
	@Autowired 
	private canHoRepository can_ho_repo;
	
	@RequestMapping("/nhanvien/{id}")
	public String getNhanVienById(Model model, @PathVariable("id") String id){
		Optional<nhan_vien> nv = nhan_vien_repo.findById(id);
		nv.get().getDangNhap().getMat_khau().trim();
		model.addAttribute("nv", nv.get());
		return "admin/thongtin";
	}
	
	@RequestMapping("/thongtin/csh/{idCSH}")
	public String getChuSoHuuById(Model model, @PathVariable("idCSH") String id){
		List<can_ho> ch = can_ho_repo.getCanHoByChuSoHuu(id);
		model.addAttribute("ch", ch);
		Optional<ChuSoHuu> csh = chu_so_huu_repo.findById(id);
		model.addAttribute("csh", csh.get());
		return "admin/chusohuu";
	}
	
	@PostMapping("/thongtin/csh/{idCSH}")
	public String postMethodName(Model model, @ModelAttribute ChuSoHuu csh,BindingResult result) {
		if (result.hasErrors()) {
			model.addAttribute("capnhat","cap nhat that bai");
            return "error";
        }
		chu_so_huu_repo.save(csh);
		model.addAttribute("csh",csh);
		model.addAttribute("capnhat","cap nhat thanh cong");
		return "admin/chusohuu";
	}

}
