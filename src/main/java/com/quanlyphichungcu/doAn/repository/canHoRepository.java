package com.quanlyphichungcu.doAn.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.quanlyphichungcu.doAn.entity.can_ho;

@Repository
public interface canHoRepository extends JpaRepository<can_ho, String>{
	@Query(value="select * from CAN_HO a where a.ma_chu_so_huu = :maCSH", nativeQuery=true)
    List<can_ho> getCanHoByChuSoHuu(@Param("maCSH") String Ma_Chu_so_huu);
    
    @Query(value="select * from CAN_HO a where a.ma_chu_so_huu is not null", nativeQuery=true)
    List<can_ho> getCanHoChuaSoHuu();
}
