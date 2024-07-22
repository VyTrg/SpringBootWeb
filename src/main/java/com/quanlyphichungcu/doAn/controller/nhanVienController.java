package com.quanlyphichungcu.doAn.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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
	
}
