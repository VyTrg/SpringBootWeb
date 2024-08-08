package com.quanlyphichungcu.doAn.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

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
	public String quanlihoadon(Model model,HttpSession session){
		nhan_vien nhanVien = (nhan_vien) session.getAttribute("thongtin_nv");
		List<ChuSoHuu> dsChuSoHuu = chu_so_huu_repo.findAll();
		List<can_ho> dsCanHo = can_ho_repo.getCanHoChuaSoHuu();
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
	
	@RequestMapping("/quanlihoadon/xemchitiet/{idHoaDon}")
	public String xemChiTiet(Model model,
			HttpSession session,
			@PathVariable("idHoaDon") String idHoaDon){
		HoaDon hoadon = hd_service.findById(idHoaDon);
		List<dich_vu_can_ho> tatcadichvu = dv_canho_repo.getDichVuByCanHo(hoadon.getMaCanHo().getMa_can_ho());
		List<JSONObject> UIchitiethoadon = new ArrayList<JSONObject>();
		for (dich_vu_can_ho item: tatcadichvu) {
			if (item.getNgay_ket_thuc() == null) {
				LocalDateTime ngaybatdau = ((Date) item.getNgay_bat_dau()).toLocalDate().atStartOfDay();
				if (ngaybatdau.getYear() <= hoadon.getNam()) {
					if (ngaybatdau.getMonthValue() <= hoadon.getThang()) {
						JSONObject json = new JSONObject();
						json.put("ma_dich_vu", item.getDich_vu().getMa_dich_vu());
						json.put("ten_dich_vu", item.getDich_vu().getTen_dich_vu());
						json.put("vat", item.getDich_vu().getVat());
						json.put("don_gia", item.getDich_vu().getDon_gia());
						json.put("don_vi", item.getDich_vu().getDon_vi());
						json.put("so_luong", item.getSo_luong());
						int soluong,dongia,vat;
						soluong = item.getSo_luong();
						dongia = item.getDich_vu().getDon_gia();
						vat = item.getDich_vu().getVat();
						float tong = (float) soluong*dongia*(1+(float)vat/100);
						json.put("tong", tong);
						UIchitiethoadon.add(json);
					}
				}
			} else {
				LocalDateTime ngaybatdau = ((Date) item.getNgay_bat_dau()).toLocalDate().atStartOfDay();
				if (ngaybatdau.getYear() <= hoadon.getNam()) {
					if (ngaybatdau.getMonthValue() <= hoadon.getThang()) {
						JSONObject json = new JSONObject();
						json.put("ma_dich_vu", item.getDich_vu().getMa_dich_vu());
						json.put("ten_dich_vu", item.getDich_vu().getTen_dich_vu());
						json.put("vat", item.getDich_vu().getVat());
						json.put("don_gia", item.getDich_vu().getDon_gia());
						json.put("don_vi", item.getDich_vu().getDon_vi());
						json.put("so_luong", item.getSo_luong());
						int soluong,dongia,vat;
						soluong = item.getSo_luong();
						dongia = item.getDich_vu().getDon_gia();
						vat = item.getDich_vu().getVat();
						float tong = (float) soluong*dongia*(1+(float)vat/100);
						json.put("tong", tong);
						UIchitiethoadon.add(json);
					}
				}
			}
		}
		model.addAttribute("thongtinhoadon",hoadon);
		model.addAttribute("chitiethoadon",UIchitiethoadon);
		return "admin/cthoadon";
	}
	
	@RequestMapping("/quanlihoadon/laphoadon/{idCanHo}")
	public String pagelaphoadon(Model model,
			HttpSession session,
			@PathVariable("idCanHo") String idCanHo
			){
		nhan_vien nhanvien = (nhan_vien) session.getAttribute("thongtin_nv");
		can_ho canHo = can_ho_repo.findById(idCanHo).get();
		List<dich_vu_can_ho> tatcadichvu = dv_canho_repo.getDichVuByCanHo(idCanHo);
		List<JSONObject> UIchitiethoadon = new ArrayList<JSONObject>();
		LocalDate currentDate = LocalDate.now();
		HoaDon hoadon = hd_service.laphoadon(currentDate.getMonthValue(), currentDate.getYear(), nhanvien, canHo, tatcadichvu);
		for (dich_vu_can_ho item: tatcadichvu) {
			if (item.getNgay_ket_thuc() == null) {
				LocalDateTime ngaybatdau = ((Date) item.getNgay_bat_dau()).toLocalDate().atStartOfDay();
				if (ngaybatdau.getYear() <= hoadon.getNam()) {
					if (ngaybatdau.getMonthValue() <= hoadon.getThang()) {
						JSONObject json = new JSONObject();
						json.put("ma_dich_vu", item.getDich_vu().getMa_dich_vu());
						json.put("ten_dich_vu", item.getDich_vu().getTen_dich_vu());
						json.put("vat", item.getDich_vu().getVat());
						json.put("don_gia", item.getDich_vu().getDon_gia());
						json.put("don_vi", item.getDich_vu().getDon_vi());
						json.put("so_luong", item.getSo_luong());
						int soluong,dongia,vat;
						soluong = item.getSo_luong();
						dongia = item.getDich_vu().getDon_gia();
						vat = item.getDich_vu().getVat();
						float tong = (float) soluong*dongia*(1+(float)vat/100);
						json.put("tong", tong);
						UIchitiethoadon.add(json);
					}
				}
			}
		}
		model.addAttribute("thongtinhoadon",hoadon);
		model.addAttribute("chitiethoadon",UIchitiethoadon);
		return "admin/laphoadon";
	}
	
	@PostMapping("/quanlihoadon/laphoadon/{idcanho}")
	public String laphoadonchocanho(Model model, 
			@PathVariable("idcanho") String idCanHo,
			@RequestParam("dichvu") List<String> dichvu,
			@RequestParam("soluong") List<String> soluong,
			HttpSession session){
		// lay can ho tu ma can ho
		can_ho canHo = can_ho_repo.findById(idCanHo).get();
		// lay thong tin nhan vien
		nhan_vien nhanvien = (nhan_vien) session.getAttribute("thongtin_nv");
		LocalDate currentDate = LocalDate.now();
		// gop 2 list 
		Map<String, Integer> sl_dv = new HashMap<String, Integer>();
		for (int i = 0; i<dichvu.size();i++) {
			sl_dv.put(dichvu.get(i), Integer.parseInt(soluong.get(i)));
		}
		// lay tat ca dich vu
		List<dich_vu_can_ho> dsDichVuCanHo = new ArrayList<dich_vu_can_ho>();
		for (String item: dichvu) {
			dich_vu_can_ho dv_ch = dv_canho_repo.getDichVuByDichVuCanHo(idCanHo, item);
			dv_ch.setSo_luong(sl_dv.get(item));
			dsDichVuCanHo.add(dv_ch);
		}
		model.addAttribute("dsDichVuCanHo",dsDichVuCanHo);
		HoaDon hoaDon = hd_service.laphoadon(currentDate.getMonthValue(), currentDate.getYear(), nhanvien, canHo, dsDichVuCanHo);
		System.out.println(hoaDon.toString());
		hd_repo.save(hoaDon);
		return "redirect:/admin/quanlihoadon";
	}
}
