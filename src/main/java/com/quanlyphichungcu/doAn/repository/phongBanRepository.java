package com.quanlyphichungcu.doAn.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.quanlyphichungcu.doAn.entity.PhongBan;

@Repository
public interface phongBanRepository extends JpaRepository<PhongBan, String> {

}
