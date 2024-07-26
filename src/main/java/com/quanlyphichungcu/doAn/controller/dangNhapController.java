package com.quanlyphichungcu.doAn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quanlyphichungcu.doAn.entity.ChuSoHuu;
import com.quanlyphichungcu.doAn.entity.dang_nhap;
import com.quanlyphichungcu.doAn.repository.chuSoHuuRepository;
import com.quanlyphichungcu.doAn.repository.dangNhapRepository;
import org.springframework.ui.Model;
@Controller
public class dangNhapController {
	@Autowired
	private dangNhapRepository dang_nhap_repo;
	
	@Autowired 
	private chuSoHuuRepository chu_so_huu_repo;

	@GetMapping("/login")
	public String Login() {
		return "login";
	}
	
	
	@PostMapping("/login")
	public String getdangnhap(@RequestParam("ten_dang_nhap")String ten_dang_nhap,
							@RequestParam("mat_khau")String mat_khau,
							@RequestParam("quyen") String quyen,
							Model model) {
		dang_nhap dangNhap = this.dang_nhap_repo.findByDangNhap(ten_dang_nhap, mat_khau);
		if(dangNhap != null && quyen.equals("NV") && dangNhap.getQuyen().getMa_quyen().trim().equals("NV"))
			return "redirect:/admin/canho";
		else if (dangNhap != null && quyen.equals("CSH") && dangNhap.getQuyen().getMa_quyen().trim().equals("CSH")) {
			ChuSoHuu chusohuu = this.chu_so_huu_repo.findByDangNhap(dangNhap);
//			model.addAttribute("thongtinkhachhang", chusohuu);
			String url = chusohuu.getMa_chu_so_huu();
			return "redirect:/user/thongtin/" + url;
		}
		else{
			model.addAttribute("message", "Sai thông tin đăng nhập. Vui lòng nhập lại.");
			return "login";
		}
	}
}
