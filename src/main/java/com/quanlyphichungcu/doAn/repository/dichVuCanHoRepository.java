package com.quanlyphichungcu.doAn.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.quanlyphichungcu.doAn.entity.dich_vu_can_ho;
import com.quanlyphichungcu.doAn.entity.dich_vu_can_ho_prikey;

public interface dichVuCanHoRepository extends JpaRepository<dich_vu_can_ho, dich_vu_can_ho_prikey>{
	//List<dich_vu_can_ho> findByma_can_ho(String ma_can_ho);
	@Query(value="select * from DICH_VU_CAN_HO a where a.ma_can_ho = :maCH", nativeQuery=true)
    List<dich_vu_can_ho> getDichVuByCanHo(@Param("maCH") String MaCanHo);
}
