package com.quanlyphichungcu.doAn.controller;

import java.sql.Date;
import java.time.LocalDate;
import java.time.temporal.Temporal;
import java.time.temporal.TemporalAdjuster;
import java.time.temporal.TemporalAdjusters;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.quanlyphichungcu.doAn.entity.can_ho;
import com.quanlyphichungcu.doAn.entity.dich_vu_can_ho;
import com.quanlyphichungcu.doAn.entity.nhan_vien;
import com.quanlyphichungcu.doAn.repository.HoaDonRepository;
import com.quanlyphichungcu.doAn.repository.canHoRepository;
import com.quanlyphichungcu.doAn.repository.chuSoHuuRepository;
import com.quanlyphichungcu.doAn.repository.dichVuCanHoRepository;
import com.quanlyphichungcu.doAn.service.hoaDonService;

import jakarta.servlet.http.HttpSession;

@Controller
public class testController {

	@Autowired HoaDonRepository HDRepository;
	
	@Autowired chuSoHuuRepository CSHRepository;
	
	@Autowired dichVuCanHoRepository DV_CHRepository;
	
	@Autowired canHoRepository CHRepository;
	
	
	
	@RequestMapping(value = "/test", method = RequestMethod.POST)
	@ResponseBody
	public String test(Model model,HttpSession session) {
		LocalDate date = LocalDate.now();
		System.out.println(date.with(TemporalAdjusters.lastDayOfMonth()));
		return "okokokokok";
	}
	
	@RequestMapping(value = "/testid", method = RequestMethod.POST)
	@ResponseBody
	public String testid(Model model,HttpSession session) {
		// lay cac can ho cua chu so huu
		Object aaa = session.getAttribute("thongtin_nv");
		System.out.println(aaa);

		return "okokokokok";
	}
}

