package com.quanlyphichungcu.doAn.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.quanlyphichungcu.doAn.entity.dang_nhap;
import com.quanlyphichungcu.doAn.entity.nhan_vien;

public interface nhanVienRepository extends JpaRepository<nhan_vien, String>{
//	nhan_vien findByDangNhap(dang_nhap dangNhap);
	 
}
