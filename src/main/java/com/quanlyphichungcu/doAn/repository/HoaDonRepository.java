package com.quanlyphichungcu.doAn.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.quanlyphichungcu.doAn.entity.HoaDon;

@Repository
public interface HoaDonRepository extends JpaRepository<HoaDon, String> {

}
