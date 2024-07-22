package com.quanlyphichungcu.doAn.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quanlyphichungcu.doAn.entity.nhan_vien;
import com.quanlyphichungcu.doAn.repository.nhanVienRepository;

@Service
public class nhanVienService {
	@Autowired
	private nhanVienRepository Repository;
	
	public Optional<nhan_vien> findById(String id) {
        return Repository.findById(id);
    }
//	public nhan_vien findByUserName(String ten_dang_nhap) {
//		return ((nhanVienService) Repository).findByUserName(ten_dang_nhap);
//	}
}
