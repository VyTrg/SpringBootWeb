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
	@Autowired HoaDonRepository HDRepository;
	
	@Autowired chuSoHuuRepository CSHRepository;
	
	@Autowired dichVuCanHoRepository DV_CHRepository;
	
	@Autowired canHoRepository CHRepository;
	
	@RequestMapping("/test")
	@ResponseBody
	public ChuSoHuu test() {
		return CSHRepository.findById("CSH3").get();
	}
}
