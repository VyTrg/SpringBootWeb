package com.quanlyphichungcu.doAn.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.quanlyphichungcu.doAn.entity.can_ho;

@Repository
public interface canHoRepository extends JpaRepository<can_ho, String>{

}
