package com.quanlyphichungcu.doAn.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.quanlyphichungcu.doAn.entity.dang_nhap;
import com.quanlyphichungcu.doAn.entity.quyen;

public interface quyenRepository extends JpaRepository<quyen, String>{
	

}
