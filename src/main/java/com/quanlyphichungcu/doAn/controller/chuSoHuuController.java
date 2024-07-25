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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
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

	@RequestMapping("/thongtincanho/{maChuSoHuu}")
	public String getMethodName(Model model,@PathVariable("maChuSoHuu") String maChuSoHuu) {
		model.addAttribute("thongtinkhachhang", CSHRepository.findById(maChuSoHuu).get());
		model.addAttribute("danhsachcanho", CanHoRepository.getCanHoByChuSoHuu(maChuSoHuu));
		return "user/thongtincanho";
	}
	
	@RequestMapping("/dangkidichvu/{maCanHo}")
	public String getThongTinDichVu(Model model) {
		model.addAttribute("dichvu", DichVuRepository.findAll());
		return "/user/dangkidichvu";
	}
	
	@PostMapping("/dangkidichvu/{maCanHo}")
	@ResponseBody
	public ResponseEntity<String> greetingJson(@RequestBody String thongTinDangKi,@PathVariable("maCanHo") String maCanHo) {
		try {
			// get date in current time
			Date currentDate = new Date();
			// get data
			String data = thongTinDangKi;
			// charge string to json
			JSONObject jsonObject = new JSONObject(data);
			 
			// Iterate over keys
	        Iterator<String> keys = jsonObject.keys();
	        while (keys.hasNext()) {
	            String key = keys.next();
	            int value = jsonObject.getInt(key);
				dich_vu_can_ho dangKiDichVu = new dich_vu_can_ho(CanHoRepository.findById(maCanHo).get(),
						DichVuRepository.findById(key).get(),value,currentDate,null);
	            DichVuCuaCanHoRepository.save(dangKiDichVu);
	        }

			

		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ResponseEntity.ok("Dang ki thanh cong");
	}
	
}
