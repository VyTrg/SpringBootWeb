package com.quanlyphichungcu.doAn.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.quanlyphichungcu.doAn.entity.ChuSoHuu;
import com.quanlyphichungcu.doAn.entity.dang_nhap;
import com.quanlyphichungcu.doAn.entity.nhan_vien;
import com.quanlyphichungcu.doAn.repository.chuSoHuuRepository;
import com.quanlyphichungcu.doAn.repository.dangNhapRepository;
import com.quanlyphichungcu.doAn.repository.nhanVienRepository;

import jakarta.servlet.http.HttpSession;

import org.springframework.ui.Model;
@Controller
public class dangNhapController {
	@Autowired
	private dangNhapRepository dang_nhap_repo;
	
	@Autowired 
	private chuSoHuuRepository chu_so_huu_repo;
	
	@Autowired
	private nhanVienRepository nhan_vien_repo;

	@GetMapping("/login")
	public String Login() {
		return "login";
	}
	
	
	@PostMapping("/login")
	public String getdangnhap(@RequestParam("ten_dang_nhap")String ten_dang_nhap,
							@RequestParam("mat_khau")String mat_khau,
							Model model, HttpSession session) {
		dang_nhap dangNhap = this.dang_nhap_repo.findByDangNhap(ten_dang_nhap, mat_khau);
		if(dangNhap != null && dangNhap.getQuyen().getMa_quyen().trim().equals("NV")) {
			nhan_vien nhanvien = this.nhan_vien_repo.findByDangNhap(dangNhap);
			session.setAttribute("thongtin_nv", nhanvien);
			return "redirect:/admin/thongtin";
		}
		else if (dangNhap != null && dangNhap.getQuyen().getMa_quyen().trim().equals("CSH")) {
			ChuSoHuu chusohuu = this.chu_so_huu_repo.findByDangNhap(dangNhap);

			String url = chusohuu.getMa_chu_so_huu();

			session.setAttribute("thongtin", chusohuu);
			return "redirect:/user/thongtin/" + url;
		}
		else if(dangNhap == null){
			session.setAttribute("message", "Thông tin đăng nhập sai. Vui lòng nhập lại!");
		}
		return "redirect:/login";
	}
	
	@RequestMapping("logout")
	public String Logout(HttpSession session) {
		if(session.getAttribute("thongtin") != null) {
			session.removeAttribute("thongtin");
		}
		if(session.getAttribute("thongtin_nv") != null) {
			session.removeAttribute("thongtin_nv");
		}
		session.removeAttribute("message");
		return "redirect:/login";
	}
}
