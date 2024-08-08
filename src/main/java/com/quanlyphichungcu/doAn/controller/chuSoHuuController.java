package com.quanlyphichungcu.doAn.controller;



import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.tomcat.util.json.JSONParser;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quanlyphichungcu.doAn.entity.can_ho;
import com.quanlyphichungcu.doAn.entity.dich_vu_can_ho;
import com.quanlyphichungcu.doAn.repository.canHoRepository;
import com.quanlyphichungcu.doAn.repository.chuSoHuuRepository;
import com.quanlyphichungcu.doAn.repository.dichVuCanHoRepository;
import com.quanlyphichungcu.doAn.repository.dichVuRepository;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;





@Controller
@RequestMapping("/user")
public class chuSoHuuController {
	@Autowired chuSoHuuRepository CSHRepository;
	
	@Autowired canHoRepository CanHoRepository;
	
	@Autowired dichVuRepository DichVuRepository;
	
	@Autowired dichVuCanHoRepository DichVuCuaCanHoRepository;

	
	@RequestMapping("/thongtin/{maChuSoHuu}")
	public String getMethodName(Model model,@PathVariable("maChuSoHuu") String maChuSoHuu) {
		model.addAttribute("thongtinkhachhang", CSHRepository.findById(maChuSoHuu).get());
		model.addAttribute("danhsachcanho", CanHoRepository.getCanHoByChuSoHuu(maChuSoHuu));
		return "/user/thongtin";
	}
	
	@RequestMapping(value="/dangkidichvu/{maChuSoHuu}", method=RequestMethod.GET)
	public String getThongTinDichVu(Model model, @PathVariable("maChuSoHuu") String ma_csh) {
		List<can_ho> danhsachcanho = CanHoRepository.getCanHoByChuSoHuu(ma_csh);
//		model.addAttribute("dichvu", DichVuRepository.findAll());
//		for(can_ho item: danhsachcanho) {
//			List<dich_vu_can_ho> danhsachdichvu;
//			danhsachdichvu = DichVuCuaCanHoRepository.getDichVuByCanHo(item.getMa_can_ho());
//		}
		model.addAttribute("dscanho", danhsachcanho);
		return "/user/dangkidichvu";
	}
	
	@RequestMapping(value="/dangkidichvu/dichvu/{ma_can_ho}", method=RequestMethod.GET)
	public String getDVCH(Model model, @PathVariable("ma_can_ho") String ma_ch) {
		List<dich_vu_can_ho> dichvucanho = DichVuCuaCanHoRepository.getDichVuByCanHo(ma_ch);
		List<dich_vu_can_ho> dichvudangki = null;
		model.addAttribute("dvch",dichvucanho);
		model.addAttribute("dichvudangki", dichvudangki);
		return "/user/dangkidichvu";
	}
	
//	@GetMapping(value = "/dangkidichvu/{maChuSoHuu}")
//	public String getCanho(Model model, @PathVariable("maChuSoHuu") String ma_csh) {
//		
////		List<can_ho> canho = canHoRepository.getCanHoByChuSoHuu
//		return "/user/dangkidichvu";
//	}
//	@PostMapping("/dangkidichvu/{maCanHo}")
//	@ResponseBody
//	public ResponseEntity<String> greetingJson(@RequestBody String thongTinDangKi,@PathVariable("maCanHo") String maCanHo) {
//		try {
//			// get date in current time
//			Date currentDate = new Date();
//			// get data
//			String data = thongTinDangKi;
//			// charge string to json
//			JSONObject jsonObject = new JSONObject(data);
//			 
//			// Iterate over keys
//	        Iterator<String> keys = jsonObject.keys();
//	        while (keys.hasNext()) {
//	            String key = keys.next();
//	            int value = jsonObject.getInt(key);
//				dich_vu_can_ho dangKiDichVu = new dich_vu_can_ho(CanHoRepository.findById(maCanHo).get(),
//						DichVuRepository.findById(key).get(),value,currentDate,null);
//	            DichVuCuaCanHoRepository.save(dangKiDichVu);
//	        }
//
//			
//
//		} catch (NumberFormatException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return ResponseEntity.ok("Dang ki thanh cong");
//	}
	
}
