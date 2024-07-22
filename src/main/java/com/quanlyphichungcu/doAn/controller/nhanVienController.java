package com.quanlyphichungcu.doAn.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quanlyphichungcu.doAn.entity.ChuSoHuu;
import com.quanlyphichungcu.doAn.entity.nhan_vien;
import com.quanlyphichungcu.doAn.repository.chuSoHuuRepository;
import com.quanlyphichungcu.doAn.repository.nhanVienRepository;


@Controller
public class nhanVienController {
	@Autowired
	private nhanVienRepository nhan_vien_repo;
	
	@Autowired
	private chuSoHuuRepository chu_so_huu_repo;
	
	@GetMapping("/chusohuu")
	@ResponseBody
	public List<ChuSoHuu> getAllCSH(){
		return chu_so_huu_repo.findAll();
	}
	
	@GetMapping("/nhanvien")
	@ResponseBody
	public List<nhan_vien> getAllNhanVien(){
		return nhan_vien_repo.findAll();
	}
	
	@RequestMapping("/nhanvien/{id}")
	public String getNhanVienById(Model model, @PathVariable("id") String id){
		Optional<nhan_vien> nv = nhan_vien_repo.findById(id);
		model.addAttribute("nv", nv.get());
		return "admin/thongtin";
	}
	
}
