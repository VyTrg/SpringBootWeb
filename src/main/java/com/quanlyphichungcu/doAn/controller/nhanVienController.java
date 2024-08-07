package com.quanlyphichungcu.doAn.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quanlyphichungcu.doAn.entity.ChuSoHuu;
import com.quanlyphichungcu.doAn.entity.HoaDon;
import com.quanlyphichungcu.doAn.entity.can_ho;
import com.quanlyphichungcu.doAn.entity.dich_vu;
import com.quanlyphichungcu.doAn.entity.dich_vu_can_ho;
import com.quanlyphichungcu.doAn.entity.nhan_vien;
import com.quanlyphichungcu.doAn.repository.HoaDonRepository;
import com.quanlyphichungcu.doAn.repository.canHoRepository;
import com.quanlyphichungcu.doAn.repository.chuSoHuuRepository;
import com.quanlyphichungcu.doAn.repository.dichVuCanHoRepository;
import com.quanlyphichungcu.doAn.repository.nhanVienRepository;
import com.quanlyphichungcu.doAn.service.hoaDonService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@Autowired
	private dichVuCanHoRepository dv_canho_repo;
	
	@Autowired
	private HoaDonRepository hd_repo;
	
	@Autowired
	private hoaDonService hd_service;
	
	@RequestMapping("/nhanvien/{id}")
	public String getNhanVienById(Model model, @PathVariable("id") String id){
		Optional<nhan_vien> nv = nhan_vien_repo.findById(id);
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
	
	@RequestMapping("/quanlihoadon")
	public String lapHoaDon(Model model,HttpSession session){
		nhan_vien nhanVien = (nhan_vien) session.getAttribute("thongtin_nv");
		List<ChuSoHuu> dsChuSoHuu = chu_so_huu_repo.findAll();
		List<can_ho> dsCanHo = can_ho_repo.findAll();
		List<HoaDon> dsHoaDon = hd_service.findALL();
		List<JSONObject> json_dsHoaDon = new ArrayList<JSONObject>();
		for (HoaDon item: dsHoaDon) {
			JSONObject json_object = new JSONObject();
			json_object.put("ma_hoa_don", item.getMa_hoa_don());
			json_object.put("tenHoaDon", item.getThang() + "-" + item.getNam());
			json_object.put("canHo", item.getMaCanHo().getMa_can_ho());
			json_object.put("nhanVien", item.getNhanVien().getHo_ten());
			json_object.put("ngayLap", item.getNgay_tao().toString());
			json_object.put("soTien", item.getTien_thang().toString());
			json_object.put("no", item.getTien_no().toString());
			List<dich_vu_can_ho> chitiet = dv_canho_repo.getDichVuByCanHo(item.getMaCanHo().getMa_can_ho());
			for (dich_vu_can_ho dichvu: chitiet) {
				
			}
//			json_object.put("chitiethoadon", );

			if (item.getNgay_dong_tien() == null) 
				json_object.put("trangThai", "Chua dong");
			else 
				json_object.put("trangThai", "Da dong");
			json_dsHoaDon.add(json_object);
		}
		model.addAttribute("dsHoaDon",json_dsHoaDon);
		model.addAttribute("dsCanHo",dsCanHo);
		model.addAttribute("thongtinnhanvien",nhanVien);
		model.addAttribute("dsChuSoHuu",dsChuSoHuu);
		return "admin/hoadon";
	}
	
	@PostMapping("/quanlihoadon/laphoadon/{idcanho}")
	@ResponseBody
	public String laphoadonchocanho(Model model, 
			@PathVariable("idcanho") String idCanHo,
			HttpSession session){
		// lay can ho tu ma can ho
		can_ho canHo = can_ho_repo.findById(idCanHo).get();
		// lay thong tin nhan vien
		nhan_vien nhanvien = (nhan_vien) session.getAttribute("thongtin_nv");
		LocalDate currentDate = LocalDate.now();
		Date dateHoaDon = java.sql.Date.valueOf(currentDate);
		// tinh tong hoa don
		float tong = 0;
		// lay tat ca dich vu
		List<dich_vu_can_ho> dsDichVuCanHo = dv_canho_repo.getDichVuByCanHo(idCanHo);
		model.addAttribute("dsDichVuCanHo",dsDichVuCanHo);
		HoaDon hoaDon = hd_service.laphoadon(currentDate.getMonthValue(), currentDate.getYear(), nhanvien, canHo, dsDichVuCanHo);
		System.out.println(hoaDon.toString());
//		hd_repo.save(hoaDon);
		return "redirect:/admin/quanlihoadon";
	}
	
	@PostMapping("/quanlihoadon/laphoadon")
	public String laptatcahoadon(Model model, 
			@RequestParam(name = "maCanHo") List<String> dsCanHo,
			HttpSession session){
		// lay thong tin nhan vien
		nhan_vien nhanvien = (nhan_vien) session.getAttribute("thongtin_nv");
		// lay can ho
		for (String item: dsCanHo) {
			can_ho canho = can_ho_repo.findById(item).get();
			LocalDate currentDate = LocalDate.now();
			Date dateHoaDon = java.sql.Date.valueOf(currentDate);
			// lay tong so tien
			float tong = 0;
			// lay tat ca dich vu
			List<dich_vu_can_ho> dsDichVuCanHo = dv_canho_repo.getDichVuByCanHo(canho.getMa_can_ho());
			// lay hoa don
			HoaDon hoaDon = hd_service.laphoadon(currentDate.getMonthValue(), currentDate.getYear(), nhanvien, canho, dsDichVuCanHo);
			if(hoaDon!=null) {
				hd_repo.save(hoaDon);
			}
		}
		return "redirect:/admin/quanlihoadon";
	}
}
