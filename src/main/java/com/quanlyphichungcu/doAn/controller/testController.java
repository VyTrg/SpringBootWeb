package com.quanlyphichungcu.doAn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testController {
	@RequestMapping("/test")
	public String test() {
		return "test";
	}
	
//	@RequestMapping("/thongtin")
//	public String thongtin() {
//		return "admin/thongtin";
//	}
	
	@RequestMapping("/ctcanho")
	public String canho() {
		return "admin/ctcanho";
	}
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
}
