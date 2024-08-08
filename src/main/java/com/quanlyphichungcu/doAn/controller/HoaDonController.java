package com.quanlyphichungcu.doAn.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.format.DateTimeFormatters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.quanlyphichungcu.doAn.entity.ChuSoHuu;
import com.quanlyphichungcu.doAn.entity.HoaDon;
import com.quanlyphichungcu.doAn.entity.can_ho;
import com.quanlyphichungcu.doAn.entity.dich_vu;
import com.quanlyphichungcu.doAn.entity.dich_vu_can_ho;
import com.quanlyphichungcu.doAn.repository.HoaDonRepository;
import com.quanlyphichungcu.doAn.repository.canHoRepository;
import com.quanlyphichungcu.doAn.repository.chuSoHuuRepository;
import com.quanlyphichungcu.doAn.repository.dichVuCanHoRepository;
import com.quanlyphichungcu.doAn.repository.dichVuRepository;
import com.quanlyphichungcu.doAn.service.canHoService;
import com.quanlyphichungcu.doAn.service.hoaDonService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class HoaDonController {
	private static final Date NULL = null;

	@Autowired
	HoaDonRepository HDRepository;
	
	@Autowired
	canHoService canhoService;

	@Autowired
	dichVuRepository DVRepository;
	
	@Autowired
	chuSoHuuRepository CSHRepository;

	@Autowired
	dichVuCanHoRepository DV_CHRepository;

	@Autowired
	canHoRepository CHRepository;

	@RequestMapping("user/hoadon/{maChuSoHuu}")
	public String thongTinHoaDon(Model model, @PathVariable("maChuSoHuu") String maChuSoHuu) {

		ChuSoHuu CSH = CSHRepository.findById(maChuSoHuu).get();

		List<can_ho> ListCanHo = CHRepository.getCanHoByChuSoHuu(maChuSoHuu);
		// tao list thong tin hoa don cua can ho


//		List<Map<String, String>> UIDichVuChoCanHo = null;
		// list cac hang ma se dua vao bang
//		List<Map<String, String>> UIDanhSachHoaDon = new ArrayList<Map<String,String>>();
		List<Map<String, String>> UIDichVuChoCanHo = null;

		List<hoaDonService> UIhoaDonService = new ArrayList<hoaDonService>();
		for (can_ho itemCanHo : ListCanHo) { 
//			ListTTHoaDon.add(getThongTinHoaDon(itemCanHo));

			List<HoaDon> danhSachHoaDon = HDRepository.findByMaCanHo(itemCanHo.getMa_can_ho());

			for (HoaDon itemHoaDon : danhSachHoaDon) {
				if (itemHoaDon.getNgay_dong_tien() == null) {
					hoaDonService itemUIHoaDon = new hoaDonService();
					itemUIHoaDon.setMa_hoa_don(itemHoaDon.getMa_hoa_don());
					itemUIHoaDon.setTenHoaDon(itemHoaDon.getThang().toString() + "/" + itemHoaDon.getNam().toString());
					itemUIHoaDon.setMaCanHo(itemCanHo);
					itemUIHoaDon.setNgay_tao(itemHoaDon.getNgay_tao().toString());
					itemUIHoaDon.setNhanVien(itemHoaDon.getNhanVien());
					List<dich_vu_can_ho> item = getChitiet(itemCanHo.getMa_can_ho());
					itemUIHoaDon.setChitietdichvu(item);
					float tong = 0;
					for(dich_vu_can_ho chitiet: item) {
						tong += (chitiet.getSo_luong() * chitiet.getDich_vu().getDon_gia() * (chitiet.getDich_vu().getVat() + 100) / 100);
					}
					
					UIhoaDonService.add(itemUIHoaDon);
					itemUIHoaDon.setTien_thang(Float.toString(tong));
//					hoaDonService itemUIHoaDon = new hoaDonService();
//					itemUIHoaDon.setMa_hoa_don(itemHoaDon.getMa_hoa_don());
//					itemUIHoaDon.setTenHoaDon(itemHoaDon.getThang().toString() + "/ " + itemHoaDon.getNam().toString());
//					itemUIHoaDon.setMaCanHo(itemCanHo);
//					itemUIHoaDon.setNgay_tao(itemHoaDon.getNgay_tao().toString());
//					itemUIHoaDon.setNhanVien(itemHoaDon.getNhanVien());
//					List<Map<String, String>> itemUIChiTietHoaDon = getChiTietHoaDon(itemCanHo);
//					itemUIHoaDon.setChiTietDichVu(itemUIChiTietHoaDon);
//					float tong = 0;
//					for (Map<String, String> tongDichVu : itemUIChiTietHoaDon) {
//						int dongia, vat, soluong;
//						String donVi;
//						dongia = Integer.parseInt(tongDichVu.get("donGia"));
//						vat = Integer.parseInt(tongDichVu.get("vat"));
//						soluong = Integer.parseInt(tongDichVu.get("soLuong"));
//						donVi = tongDichVu.get("donVi");
//						tong += (dongia * soluong * ((float)vat/100  + 1));
//					}
//					UIhoaDonService.add(itemUIHoaDon);
				}
			}

		}
		model.addAttribute("danhSachCanHo", ListCanHo);
		model.addAttribute("thongtin", CSH);
		model.addAttribute("danhSachHoaDon", UIhoaDonService);
		return "user/hoadon";
	}

	@RequestMapping("/user/tracuuhoadon/{maChuSoHuu}")
	public String quyen(Model model, @PathVariable("maChuSoHuu") String maChuSoHuu) {
		// get data
//		// lay cac can ho cua chu so huu
//		List<can_ho> ListCanHo = CHRepository.getCanHoByChuSoHuu(maChuSoHuu);
//		// tao list thong tin hoa don cua can ho
//		List<Map<String, String>> ListTTHoaDon = new ArrayList<>();
//
//		List<Map<String, String>> UIDichVuChoCanHo = null;
//		// list cac hang ma se dua vao bang
////		List<Map<String, String>> UIDanhSachHoaDon = new ArrayList<Map<String,String>>();
//		ChuSoHuu CSH = CSHRepository.findById(maChuSoHuu).get();
//		List<hoaDonService> UIhoaDonService = new ArrayList<hoaDonService>();
//		for (can_ho itemCanHo : ListCanHo) { // Use enhanced for loop for cleaner syntax
//			ListTTHoaDon.add(getThongTinHoaDon(itemCanHo));
//
//			List<HoaDon> danhSachHoaDon = HDRepository.findByMaCanHo(itemCanHo.getMa_can_ho());
//			// lap cac hoa don cua can ho chuyen du lieu sang map
//			for (HoaDon itemHoaDon : danhSachHoaDon) {
//				if (itemHoaDon.getNgay_dong_tien() != null) {
//					hoaDonService itemUIHoaDon = new hoaDonService();
//					itemUIHoaDon.setMa_hoa_don(itemHoaDon.getMa_hoa_don());
//					itemUIHoaDon.setTenHoaDon(itemHoaDon.getThang().toString() + "/" + itemHoaDon.getNam().toString());
//					itemUIHoaDon.setMaCanHo(itemCanHo);
//					itemUIHoaDon.setNgay_tao(itemHoaDon.getNgay_tao().toString());
//					itemUIHoaDon.setNhanVien(itemHoaDon.getNhanVien());
//					itemUIHoaDon.setNgay_dong_tien(itemHoaDon.getNgay_dong_tien().toString());
//					List<Map<String, String>> itemUIChiTietHoaDon = getChiTietHoaDon(itemCanHo);
//					itemUIHoaDon.setChiTietDichVu(itemUIChiTietHoaDon);
//
//					float tong = 0;
//					for (Map<String, String> tongDichVu : itemUIChiTietHoaDon) {
//						int dongia, vat, soluong;
//						String donVi;
//						dongia = Integer.parseInt(tongDichVu.get("donGia"));
//						vat = Integer.parseInt(tongDichVu.get("vat"));
//						soluong = Integer.parseInt(tongDichVu.get("soLuong"));
//						donVi = tongDichVu.get("donVi");
//						tong += (dongia * soluong * (vat + 100)) / 100;
//					}
//					UIhoaDonService.add(itemUIHoaDon);
//					itemUIHoaDon.setTien_thang(Float.toString(tong));
//				}
//			}
//
//		}
		ChuSoHuu CSH = CSHRepository.findById(maChuSoHuu).get();

		List<can_ho> ListCanHo = CHRepository.getCanHoByChuSoHuu(maChuSoHuu);
		List<hoaDonService> UIhoaDonService = new ArrayList<hoaDonService>();
		for (can_ho itemCanHo : ListCanHo) { 
//			ListTTHoaDon.add(getThongTinHoaDon(itemCanHo));

			List<HoaDon> danhSachHoaDon = HDRepository.findByMaCanHo(itemCanHo.getMa_can_ho());

			for (HoaDon itemHoaDon : danhSachHoaDon) {
				if (itemHoaDon.getNgay_dong_tien() != null) {
					hoaDonService itemUIHoaDon = new hoaDonService();
					itemUIHoaDon.setMa_hoa_don(itemHoaDon.getMa_hoa_don());
					itemUIHoaDon.setTenHoaDon(itemHoaDon.getThang().toString() + "/" + itemHoaDon.getNam().toString());
					itemUIHoaDon.setMaCanHo(itemCanHo);
					itemUIHoaDon.setNgay_tao(itemHoaDon.getNgay_tao().toString());
					itemUIHoaDon.setNhanVien(itemHoaDon.getNhanVien());
					itemUIHoaDon.setNgay_dong_tien(itemHoaDon.getNgay_dong_tien().toString());
					List<dich_vu_can_ho> item = getChitiet(itemCanHo.getMa_can_ho());
					itemUIHoaDon.setChitietdichvu(item);
					float tong = 0;
					for(dich_vu_can_ho chitiet: item) {
						tong += (chitiet.getSo_luong() * chitiet.getDich_vu().getDon_gia() * (chitiet.getDich_vu().getVat() + 100) / 100);
					}
					
					UIhoaDonService.add(itemUIHoaDon);
					itemUIHoaDon.setTien_thang(Float.toString(tong));
				}
			}

		}
		model.addAttribute("danhSachCanHo", ListCanHo);
		model.addAttribute("thongtin", CSH);
		model.addAttribute("danhSachHoaDon", UIhoaDonService);
		return "user/tracuuhoadon";
	}

	private List<Map<String, String>> getThongTinDichVu(String maCanHo, HoaDon HD) {
		// lay dich vu cho can ho tu database
		List<dich_vu_can_ho> DichVuChoCanHo = DV_CHRepository.getDichVuByCanHo(maCanHo);
		// tao 1 list de hien thi sang UI
		List<Map<String, String>> UIDichVuChoCanHo = new ArrayList<>();

		for (dich_vu_can_ho item : DichVuChoCanHo) { // Use enhanced for loop for cleaner syntax
			Map<String, String> MapDichVu = new HashMap<>();

			// Assuming HD refers to a HOA_DON object
			MapDichVu.put("tenDichVu", item.getDich_vu().getTen_dich_vu().toString());
			MapDichVu.put("thoiGian", item.getNgay_bat_dau().toString() + " - " + HD.getNgay_tao().toString());
			MapDichVu.put("soLuong", String.valueOf(item.getSo_luong()));
			MapDichVu.put("donVi", item.getDich_vu().getDon_vi());
			MapDichVu.put("donGia", String.valueOf(item.getDich_vu().getDon_gia()));
			MapDichVu.put("thue", String.valueOf(item.getDich_vu().getVat()));
			Float thue = (float) (item.getDich_vu().getVat());
			Float tong = (item.getSo_luong() * item.getDich_vu().getDon_gia() * (100 + thue) / 100);
			MapDichVu.put("tong", String.format("%.02f", tong));

			UIDichVuChoCanHo.add(MapDichVu);
		}
		return UIDichVuChoCanHo;
	}

	private Map<String, String> getThongTinHoaDon(can_ho canHo) {
		String maChuSoHuu = canHo.getChuSoHuu().getMa_chu_so_huu();
		// tao list thong tin hoa don cua can ho

		Map<String, String> TTHoaDon = new HashMap<>();

		// Assuming CSH2 refers to a CanHoSo object retrieved from the repository
		ChuSoHuu csh = CSHRepository.findById(maChuSoHuu).get();
		TTHoaDon.put("maKhachHang", maChuSoHuu); // Handle potential null case
		TTHoaDon.put("hoTenKhachHang", csh != null ? csh.getHo_ten() : "N/A"); // Handle potential null case
		TTHoaDon.put("soDienThoai", csh != null ? csh.getSdt() : "N/A");

		return TTHoaDon;
	}

	private List<Map<String, String>> getChiTietHoaDon(can_ho itemCanHo) {
		List<Map<String, String>> UIChiTietHoaDon = new ArrayList<Map<String, String>>();
		List<dich_vu_can_ho> ListCTHoaDon = DV_CHRepository.getDichVuByCanHo(itemCanHo.getMa_can_ho());
		for (dich_vu_can_ho itemChiTiet : ListCTHoaDon) {
			Map<String, String> rowChiTiet = new HashMap<String, String>();
			rowChiTiet.put("tenDichVu", itemChiTiet.getDich_vu().getTen_dich_vu());
			int soLuong = itemChiTiet.getSo_luong();
			rowChiTiet.put("soLuong", Integer.toString(soLuong));
			int donGia = itemChiTiet.getDich_vu().getDon_gia();
			rowChiTiet.put("donGia", Integer.toString(donGia));
			int vat = itemChiTiet.getDich_vu().getVat();
			rowChiTiet.put("vat", Integer.toString(vat));
			rowChiTiet.put("donVi", itemChiTiet.getDich_vu().getDon_vi());
			int tong = (donGia * soLuong * (vat + 100)) / 100;
			rowChiTiet.put("tong", Integer.toString(tong));
			UIChiTietHoaDon.add(rowChiTiet);
		}
		return UIChiTietHoaDon;
	}

	public List<dich_vu_can_ho> getChitiet(String can_ho){
		List<dich_vu_can_ho> danhsachdichvu = DV_CHRepository.getDichVuByCanHo(can_ho);
		return danhsachdichvu;
	}
	
	@RequestMapping(value = "/user/thanhtoan", method = RequestMethod.POST)
	public String Thanhtoan(HttpServletRequest request) {
		String ma_hoa_don = request.getParameter("ma_hoa_don");
		String khachhang = request.getParameter("khachhang");
		LocalDate currentDate = LocalDate.now();
		Date date = java.sql.Date.valueOf(currentDate);
		HoaDon hoadon = new HoaDon();
		hoadon = HDRepository.findById(ma_hoa_don).get();
		hoadon.setNgay_dong_tien(date);
		HDRepository.save(hoadon);
		return "redirect:/user/hoadon/" + khachhang;
	}
	
//	@GetMapping("/user/hoadon/find/{id_canho}")
////	@ResponseBody
//	public String getHD(@PathVariable("id_canho") String id_can_ho, Model model,
//			@RequestParam("id_csh") String id_csh) {
//		List<can_ho> ListCanHo = CHRepository.getCanHoByChuSoHuu("CSH2");
//		// tao list thong tin hoa don cua can ho
//		List<Map<String, String>> ListTTHoaDon = new ArrayList<>();
//
//		List<Map<String, String>> UIDichVuChoCanHo = null;
//		// list cac hang ma se dua vao bang
////		List<Map<String, String>> UIDanhSachHoaDon = new ArrayList<Map<String,String>>();
//
//		List<hoaDonService> UIhoaDonService = new ArrayList<hoaDonService>();
//		for (can_ho itemCanHo : ListCanHo) { // Use enhanced for loop for cleaner syntax
//			ListTTHoaDon.add(getThongTinHoaDon(itemCanHo));
//
//			List<HoaDon> danhSachHoaDon = HDRepository.findByMaCanHo(itemCanHo.getMa_can_ho());
//			// lap cac hoa don cua can ho chuyen du lieu sang map
//			for (HoaDon itemHoaDon : danhSachHoaDon) {
//				if (itemHoaDon.getNgay_dong_tien() == null) {
//					hoaDonService itemUIHoaDon = new hoaDonService();
//					itemUIHoaDon.setMa_hoa_don(itemHoaDon.getMa_hoa_don());
//					itemUIHoaDon.setTenHoaDon(itemHoaDon.getThang().toString() + "/" + itemHoaDon.getNam().toString());
//					itemUIHoaDon.setMaCanHo(itemCanHo);
//					itemUIHoaDon.setNgay_tao(itemHoaDon.getNgay_tao().toString());
//					itemUIHoaDon.setNhanVien(itemHoaDon.getNhanVien());
//					List<Map<String, String>> itemUIChiTietHoaDon = getChiTietHoaDon(itemCanHo);
//					itemUIHoaDon.setChiTietDichVu(itemUIChiTietHoaDon);
//					float tong = 0;
//					for (Map<String, String> tongDichVu : itemUIChiTietHoaDon) {
//						int dongia, vat, soluong;
//						String donVi;
//						dongia = Integer.parseInt(tongDichVu.get("donGia"));
//						vat = Integer.parseInt(tongDichVu.get("vat"));
//						soluong = Integer.parseInt(tongDichVu.get("soLuong"));
//						donVi = tongDichVu.get("donVi");
//						tong += (dongia * soluong * (vat + 100)) / 100;
//					}
//					UIhoaDonService.add(itemUIHoaDon);
//					itemUIHoaDon.setTien_thang(Float.toString(tong));
//				}
//			}
//
//		}
//		
//		model.addAttribute("dshd", UIhoaDonService);
//		System.out.println("+++++++++++" + id_can_ho);
//		List<dich_vu_can_ho> dvch = DV_CHRepository.getDichVuByCanHo(id_can_ho);
//		List<Map<String, String>> chitiet = new ArrayList<Map<String, String>>();
//		List<HoaDon> danhsachoadon = HDRepository.findByMaCanHo(id_can_ho);
//		for (dich_vu_can_ho item : dvch) {
//			Map<String, String> row = new HashMap<String, String>();
//		
//			row.put("ten_dich_vu", item.getDich_vu().getTen_dich_vu());
////			System.out.println("+++++++++++" + item.getDich_vu().getTen_dich_vu());
//			row.put("don_gia", Integer.toString(item.getDich_vu().getDon_gia()));
//			row.put("so_luong", Integer.toString(item.getSo_luong()));
//			row.put("vat", Integer.toString(item.getDich_vu().getVat()));
//			row.put("don_vi", item.getDich_vu().getDon_vi());
//			int tong = (item.getDich_vu().getDon_gia() * item.getSo_luong() * (item.getDich_vu().getVat() + 100) / 100);
//			row.put("tongtien", Integer.toString(tong));
//			chitiet.add(row);
//			System.out.println("+++++++++++" + chitiet.get(0).get("ten_dich_vu"));
//		}
//		
//		model.addAttribute("chitiethd", chitiet);
//		return "/user/hoadon";
//	}
	
}
