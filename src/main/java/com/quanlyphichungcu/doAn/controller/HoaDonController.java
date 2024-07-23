package com.quanlyphichungcu.doAn.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quanlyphichungcu.doAn.entity.ChuSoHuu;
import com.quanlyphichungcu.doAn.entity.HoaDon;
import com.quanlyphichungcu.doAn.entity.can_ho;
import com.quanlyphichungcu.doAn.entity.dich_vu_can_ho;
import com.quanlyphichungcu.doAn.repository.HoaDonRepository;
import com.quanlyphichungcu.doAn.repository.canHoRepository;
import com.quanlyphichungcu.doAn.repository.chuSoHuuRepository;
import com.quanlyphichungcu.doAn.repository.dichVuCanHoRepository;

@Controller
public class HoaDonController {
	private static final Date NULL = null;

	@Autowired HoaDonRepository HDRepository;
	
	@Autowired chuSoHuuRepository CSHRepository;
	
	@Autowired dichVuCanHoRepository DV_CHRepository;
	
	@Autowired canHoRepository CHRepository;
	
	@RequestMapping("user/hoadon/{maCSH}")
	public String thongTinHoaDon(Model model,@PathVariable("maCSH") String maChuSoHuu) {
		// lay thong tin can de in ra bang
		List<can_ho> ListCanHo = CHRepository.getCanHoByChuSoHuu(maChuSoHuu);
		HoaDon HD =  HDRepository.findByMaCanHoChuaThanhToan(ListCanHo.get(0).getMa_can_ho());

		// tao 1 list map luu thong tin hoa don
		List<Map<String, String>> ListMapHoaDon = new ArrayList<>();
		for (can_ho item : ListCanHo) { // Use enhanced for loop for cleaner syntax
		    ListMapHoaDon.add(getThongTinHoaDon(item,maChuSoHuu));
		}
		// luu thong tin dich vu vao 1 list
		List<Map<String, String>> UIDichVuChoCanHo = getThongTinDichVu(ListCanHo.get(0).getMa_can_ho(), HD);
		model.addAttribute("listDichVu", UIDichVuChoCanHo);
		model.addAttribute("thongTinHoaDon",ListMapHoaDon);
		return "user/hoadon";
	}

	
	@RequestMapping("/user/tracuuhoadon/{maChuSoHuu}")
	public String quyen(Model model,@PathVariable("maChuSoHuu") String maChuSoHuu) {
		// get data
		// lay cac can ho cua chu so huu
		List<can_ho> ListCanHo =  CHRepository.getCanHoByChuSoHuu(maChuSoHuu);
		// tao list thong tin hoa don cua can ho
		List<Map<String, String>> ListTTHoaDon = new ArrayList<>();

		for (can_ho item : ListCanHo) { // Use enhanced for loop for cleaner syntax
		    ListTTHoaDon.add(getThongTinHoaDon(item,maChuSoHuu));
		}
		List<HoaDon> danhSachHoaDon = HDRepository.findByMaCanHo(ListCanHo.get(0).getMa_can_ho());
			// list cac hang ma se dua vao bang
			List<Map<String, String>> UIDanhSachHoaDon = new ArrayList<Map<String,String>>();
			
			// lap cac hoa don cua can ho chuyen du lieu sang map
			for (HoaDon item : danhSachHoaDon) {
				Map<String, String> row = new HashMap<String, String>();
				String tenHoaDon = item.getThang().toString()+" "+item.getNam().toString();
				row.put("tenHoaDon", tenHoaDon);
				row.put("soTien", item.getThang().toString());
				String ngayDong;
				String trangThai;
				if (item.getNgay_dong_tien() != NULL) {
					ngayDong = item.getNgay_dong_tien().toString();
					trangThai = "da dong";
				} else {
					ngayDong = "chua dong tien";
					trangThai = "chua dong";
				}
				row.put("ngayDong", ngayDong);
				row.put("ngayLap", item.getNgay_tao().toString());
				row.put("tienThang", item.getThang().toString());
				row.put("trangThai", trangThai);
				row.put("tienNo", item.getTien_no().toString());
				UIDanhSachHoaDon.add(row);
			}
		model.addAttribute("thongTinHoaDon", ListTTHoaDon);
		model.addAttribute("danhSachHoaDon", UIDanhSachHoaDon);
		return "user/tracuuhoadon";
	}
	
	private List<Map<String, String>> getThongTinDichVu(String maCanHo,HoaDon HD) {
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

		    MapDichVu.put("donGia", String.valueOf(item.getDich_vu().getDon_gia()));
		    MapDichVu.put("thue", String.valueOf(item.getDich_vu().getVat())); 
		    Float thue = (float) (item.getDich_vu().getVat());
		    Float tong = (item.getSo_luong() * item.getDich_vu().getDon_gia() * (100+thue)/100); 
		    MapDichVu.put("tong", String.format("%.02f", tong));
		    
		    UIDichVuChoCanHo.add(MapDichVu);
		}
		return UIDichVuChoCanHo;
	}
	
	private Map<String, String> getThongTinHoaDon(can_ho canHo, String maChuSoHuu) {
		// tao list thong tin hoa don cua can ho

		Map<String, String> TTHoaDon = new HashMap<>();

	    // Assuming CSH2 refers to a CanHoSo object retrieved from the repository
	    ChuSoHuu csh = CSHRepository.findById(maChuSoHuu).get();
	    TTHoaDon.put("maKhachHang", maChuSoHuu); // Handle potential null case
	    TTHoaDon.put("hoTenKhachHang", csh != null ? csh.getHo_ten() : "N/A"); // Handle potential null case
	    TTHoaDon.put("soDienThoai", csh != null ? csh.getSdt() : "N/A");

	    TTHoaDon.put("maCanHo", canHo.getMa_can_ho());
	    TTHoaDon.put("khu", canHo.getKhu());
	    TTHoaDon.put("tang", canHo.getTang());

		return TTHoaDon;
	}
}

