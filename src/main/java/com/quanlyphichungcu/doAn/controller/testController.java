package com.quanlyphichungcu.doAn.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
public class testController {
//	@Autowired HoaDonRepository HDRepository;
//	
//	@Autowired chuSoHuuRepository CSHRepository;
//	
//	@Autowired dichVuCanHoRepository DV_CHRepository;
//	
//	@Autowired canHoRepository CHRepository;
//	
//	@RequestMapping("/test")
//	@ResponseBody
//	public List<dich_vu_can_ho> test() {
//		// lay thong tin can de in ra bang
//				List<can_ho> ListCanHo =  CHRepository.getCanHoByChuSoHuu("CSH2");
//				HoaDon HD =  HDRepository.findByMaCanHoChuaThanhToan(ListCanHo.get(0).getMa_can_ho());
//				List<dich_vu_can_ho> DichVuChoCanHo = DV_CHRepository.getDichVuByCanHo(ListCanHo.get(0).getMa_can_ho());
//				// tao ra 1 list cac map luu thong tin
//				List<Map<String, String>> ListMapHoaDon = new ArrayList<>();
//
//				for (can_ho item : ListCanHo) { // Use enhanced for loop for cleaner syntax
//				    Map<String, String> MapHoaDon = new HashMap<>();
//
//				    // Assuming HD refers to a HOA_DON object
//				    MapHoaDon.put("thang", HD.getThang().toString()); // Use getThang() for month
//				    MapHoaDon.put("nam", HD.getNam().toString());   // Use getNam() for year (assuming a year getter exists)
//				    MapHoaDon.put("ngayTao", HD.getNgay_tao().toString());
//
//				    // Assuming CSH2 refers to a CanHoSo object retrieved from the repository
//				    ChuSoHuu csh = CSHRepository.findById("CSH2").get();
//				    MapHoaDon.put("hoTenKhachHang", csh != null ? csh.getHo_ten() : "N/A"); // Handle potential null case
//
//				    MapHoaDon.put("CanHoSo", item.getMa_can_ho());
//				    MapHoaDon.put("khu", item.getKhu());
//				    MapHoaDon.put("tang", item.getTang());
//
//				    ListMapHoaDon.add(MapHoaDon);
//				}
//		return DichVuChoCanHo;
//	}
}