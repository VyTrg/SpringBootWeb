package com.quanlyphichungcu.doAn.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.quanlyphichungcu.doAn.entity.dich_vu_can_ho;
import com.quanlyphichungcu.doAn.entity.dich_vu_can_ho_prikey;

public interface dichVuCanHoRepository extends JpaRepository<dich_vu_can_ho, dich_vu_can_ho_prikey>{
	//List<dich_vu_can_ho> findByma_can_ho(String ma_can_ho);
}
