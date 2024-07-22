package com.quanlyphichungcu.doAn.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.quanlyphichungcu.doAn.entity.dang_nhap;


public interface dangNhapRepository extends JpaRepository<dang_nhap, String>{
	@Query(value="select * from DANG_NHAP where ten_dang_nhap=?1 and mat_khau=?2", nativeQuery = true)
	dang_nhap findByDangNhap(String ten_dang_nhap, String mat_khau);
}
