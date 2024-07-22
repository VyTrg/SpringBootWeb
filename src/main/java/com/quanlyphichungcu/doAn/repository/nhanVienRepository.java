package com.quanlyphichungcu.doAn.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.quanlyphichungcu.doAn.entity.nhan_vien;

@Repository
public interface nhanVienRepository extends JpaRepository<nhan_vien, String>{

}
