package com.quanlyphichungcu.doAn.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.quanlyphichungcu.doAn.entity.dang_nhap;
import com.quanlyphichungcu.doAn.entity.nhan_vien;

@Repository
public interface nhanVienRepository extends JpaRepository<nhan_vien, String>{
	nhan_vien findByDangNhap(dang_nhap dangNhap);
}
