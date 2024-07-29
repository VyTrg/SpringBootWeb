package com.quanlyphichungcu.doAn.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.quanlyphichungcu.doAn.entity.ChuSoHuu;
import com.quanlyphichungcu.doAn.entity.dang_nhap;

import java.util.List;


import org.springframework.stereotype.Repository;



@Repository
public interface chuSoHuuRepository extends JpaRepository<ChuSoHuu, String> {
	ChuSoHuu findByDangNhap(dang_nhap dangNhap);
	
}
