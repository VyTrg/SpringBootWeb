package com.quanlyphichungcu.doAn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quanlyphichungcu.doAn.entity.dich_vu_can_ho;
import com.quanlyphichungcu.doAn.entity.dich_vu_can_ho_prikey;
import com.quanlyphichungcu.doAn.repository.dichVuCanHoRepository;

@Service
public class dichVuCanHoService {

	@Autowired
	private dichVuCanHoRepository DichVuCanHoRepository;
	
	public List<dich_vu_can_ho> findAll() {
		return DichVuCanHoRepository.findAll();
	}
	
	public dich_vu_can_ho save(dich_vu_can_ho Dich_Vu_Can_Ho) {
		return DichVuCanHoRepository.save(Dich_Vu_Can_Ho);
	}
	
	public void deleteById(dich_vu_can_ho_prikey id) {
		DichVuCanHoRepository.deleteById(id);;
	}
	
	public List<dich_vu_can_ho> findDichVuByIdCanHo(String id) {
		return DichVuCanHoRepository.findByma_can_ho(id);
	}
}
