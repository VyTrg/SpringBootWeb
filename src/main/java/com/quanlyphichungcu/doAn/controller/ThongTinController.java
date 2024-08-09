package com.quanlyphichungcu.doAn.controller;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.quanlyphichungcu.doAn.entity.ChuSoHuu;
import com.quanlyphichungcu.doAn.entity.PhongBan;
import com.quanlyphichungcu.doAn.entity.can_ho;
import com.quanlyphichungcu.doAn.entity.dang_nhap;
import com.quanlyphichungcu.doAn.entity.nhan_vien;
import com.quanlyphichungcu.doAn.repository.canHoRepository;
import com.quanlyphichungcu.doAn.repository.chuSoHuuRepository;
import com.quanlyphichungcu.doAn.repository.dangNhapRepository;
import com.quanlyphichungcu.doAn.repository.nhanVienRepository;
import com.quanlyphichungcu.doAn.repository.phongBanRepository;
import com.quanlyphichungcu.doAn.service.chuSoHuuService;
import com.quanlyphichungcu.doAn.service.dangNhapService;
import com.quanlyphichungcu.doAn.service.nhanVienService;




@Controller
@RequestMapping("/admin")
public class ThongTinController {
	
	@Autowired
	private nhanVienRepository NhanVienRepository;
	
	@Autowired
	private chuSoHuuRepository ChuSoHuuRepository;
	
	@Autowired
	private canHoRepository CanHoRepository;
	
	@Autowired
	private dangNhapRepository DangNhapRepository;
	
	@Autowired
	private phongBanRepository PhongBanRepository;
	
	@Autowired
	private nhanVienService NhanVienService;
	
	@Autowired
	private chuSoHuuService ChuSoHuuService;
	
	@Autowired
	private dangNhapService DangNhapService;
	
	
	@GetMapping("/thongtin")
	public String listThongTin(Model model) {
		
		List<nhan_vien> nv = NhanVienRepository.findAll();
		model.addAttribute("nv", nv);
		
		List<ChuSoHuu> csh = ChuSoHuuRepository.findAll();
		model.addAttribute("csh", csh);
		
		return "admin/thongtin";
	}
	
	
	@GetMapping("/nv/{id}")
	public String chinhsuanv(Model model, @PathVariable("id") String id){
		Optional<nhan_vien> nv = NhanVienRepository.findById(id);
		model.addAttribute("nv", nv.get());
		return "admin/nhanvien";
	}
	@PostMapping("/nv/{id}")
	public String chinhsuanv(Model model, @Validated @ModelAttribute("nv") nhan_vien nv, 
		BindingResult result) {
		if (result.hasErrors()) {
			return "admin/nhanvien"; // Trả về trang chỉnh sửa kèm theo thông báo lỗi
		}
		NhanVienService.save(nv);
		model.addAttribute("message", "Cập nhật thành công!");
		return "admin/nhanvien";
	}
	
	
	@GetMapping("/csh/{id}")
	public String chinhsuacsh(Model model, @PathVariable("id") String id){
		Optional<ChuSoHuu> csh = ChuSoHuuRepository.findById(id);
		model.addAttribute("csh", csh.get());
		List<can_ho> ch = CanHoRepository.getCanHoByChuSoHuu(id);
		model.addAttribute("ch", ch);
		return "admin/chusohuu";
	}
	@PostMapping("/csh/{id}")
	public String chinhsuacsh(Model model, @Validated @ModelAttribute("csh") ChuSoHuu csh, 
		BindingResult result) {
		if (result.hasErrors()) {
			return "admin/chusohuu"; // Trả về trang chỉnh sửa kèm theo thông báo lỗi
		}
		ChuSoHuuService.save(csh);
		model.addAttribute("message", "Cập nhật thành công!");
		return "admin/chusohuu";
	}
	
	
	@GetMapping("/doimk")
	public String thaydoi(Model model) {
		return "admin/doimk";
	}
	@PostMapping("/doimk")
	public String thaydoi(Model model,
			@RequestParam("id") String id,
			@RequestParam("pw") String pw,
			@RequestParam("pw1") String pw1,
			@RequestParam("pw2") String pw2) {
		if (id.equals("") || pw.equals("") || pw1.equals("") || pw2.equals("")) {
			model.addAttribute("message", "Không được để trống thông tin!");
		}
		else if(!pw1.equals(pw2)) {
			model.addAttribute("message", "Xác nhận mật khẩu không đúng!");
		}
		else {
			dang_nhap dn = DangNhapRepository.findByDangNhap(id, pw);
			if(dn == null) {
				model.addAttribute("message", "Tài khoản hoặc mật khẩu không đúng!");
			}
			else {
				nhan_vien nv = NhanVienRepository.findByDangNhap(dn);
				dn.setMat_khau(pw1);
				NhanVienService.save(nv);
				model.addAttribute("message", "Đổi mật khẩu thành công!");
			}
		}
		return "admin/doimk";
		//return "redirect:/login";
	}
	
	
	@GetMapping("/themnv")
	public String themnv(Model model) {
		nhan_vien nv = new nhan_vien();
		dang_nhap dn = new dang_nhap();
		List<PhongBan> pb = PhongBanRepository.findAll();
	    model.addAttribute("pb", pb);
		model.addAttribute("nv", nv);
		model.addAttribute("dn", dn);
		return "admin/themnv";
	}
	@PostMapping("/themnv")
	public String themnv(Model model, @Valid @ModelAttribute("nv") nhan_vien nv,
			BindingResult result) {
		List<PhongBan> pb = PhongBanRepository.findAll();
	    model.addAttribute("pb", pb);
	    if(nv.getMa_nhan_vien().equals("") || nv.getHo_ten().equals("")
	    		|| nv.getSdt().equals("") || nv.getCccd().equals("")
	    		|| nv.getDangNhap().getTen_dang_nhap().equals("") 
	    		|| nv.getDangNhap().getMat_khau().equals("")) {
	    	model.addAttribute("message", "Vui lòng nhập đủ thông tin!");
			return "admin/themnv";
	    }
		if(result.hasErrors()) {
			model.addAttribute("message", "Vui lòng thử lại!");
			return "admin/themnv";
		}
		DangNhapService.create(nv.getDangNhap());
		NhanVienService.create(nv);
		model.addAttribute("message", "Tạo thành công!");
		return "admin/themnv";
	}
	
	
	@GetMapping("/themcsh")
	public String themcsh(Model model) {
		ChuSoHuu csh = new ChuSoHuu();
		dang_nhap dn = new dang_nhap();
		model.addAttribute("csh", csh);
		model.addAttribute("dn", dn);
		return "admin/themcsh";
	}
	@PostMapping("/themcsh")
	public String themcsh(Model model, @Valid @ModelAttribute("csh") ChuSoHuu csh,
			BindingResult result) {
		if(csh.getMa_chu_so_huu().equals("") || csh.getHo_ten().equals("")
	    		|| csh.getSdt().equals("") || csh.getCccd().equals("")
	    		|| csh.getDangNhap().getTen_dang_nhap().equals("") 
	    		|| csh.getDangNhap().getMat_khau().equals("")) {
	    	model.addAttribute("message", "Vui lòng nhập đủ thông tin!");
			return "admin/themcsh";
	    }
		if (result.hasErrors()) {
			model.addAttribute("message", "Vui lòng thử lại!");
			return "admin/themcsh";
		}
		DangNhapService.create(csh.getDangNhap());
		ChuSoHuuService.create(csh);
		model.addAttribute("message", "Tạo thành công!");
		return "admin/themcsh";
	}
	
}

	
	
	
	

	
	

