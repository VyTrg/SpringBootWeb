package com.quanlyphichungcu.doAn.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.quanlyphichungcu.doAn.entity.HoaDon;

@Repository
public interface HoaDonRepository extends JpaRepository<HoaDon, String> {
	@Query(value="select * from HOA_DON a where a.ma_can_ho = ?1", nativeQuery=true)
    List<HoaDon> findByMaCanHo(String MaCanHo);
	
	@Query(value="select * from HOA_DON a where a.ma_can_ho = ?1 and a.ngay_dong_tien is null", nativeQuery=true)
    HoaDon findByMaCanHoChuaThanhToan(String MaCanHo);
}
