package com.quanlyphichungcu.doAn.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quanlyphichungcu.doAn.entity.dang_nhap;
import com.quanlyphichungcu.doAn.entity.nhan_vien;
import com.quanlyphichungcu.doAn.repository.nhanVienRepository;

@Service
public class nhanVienService {
	@Autowired
	private nhanVienRepository Repository;
	
//	public nhan_vien getNhanVien(dang_nhap dangNhap) {
//		nhan_vien nhanVien = Repository.findByDangNhap(dangNhap);
//		if(nhanVien == null)
//			return null;
//		return new nhan_vien();
//	}
	
	
}
