package com.quanlyphichungcu.doAn.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.quanlyphichungcu.doAn.entity.can_ho;

@Repository
public interface canHoRepository extends JpaRepository<can_ho, String>{
	@Query(value="select * from CAN_HO where ma_chu_so_huu = ?1", nativeQuery=true)
    List<can_ho> getCanHoByChuSoHuu(String Ma_Chu_so_huu);
}
