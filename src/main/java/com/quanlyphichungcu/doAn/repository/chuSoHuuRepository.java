package com.quanlyphichungcu.doAn.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.quanlyphichungcu.doAn.entity.ChuSoHuu;

@Repository
public interface chuSoHuuRepository extends JpaRepository<ChuSoHuu, String> {
	List<ChuSoHuu> findBySdt(String sdt);
}
