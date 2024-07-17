package com.quanlyphichungcu.doAn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.quanlyphichungcu.doAn.entity.ChuSoHuu;
import com.quanlyphichungcu.doAn.repository.chuSoHuuRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class chuSoHuuController {
	@Autowired chuSoHuuRepository repository;
	
	@GetMapping("/ChuSoHuu")
	@ResponseBody
	public List<ChuSoHuu> getMethodName() {
		return repository.findBySdt("222222");
	}
}
