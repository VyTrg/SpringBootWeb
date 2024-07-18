package com.quanlyphichungcu.doAn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quanlyphichungcu.doAn.entity.dich_vu;
import com.quanlyphichungcu.doAn.repository.dichVuRepository;

@Service
public class dichVuService {
	
	@Autowired
	private dichVuRepository DichVuRepository;
	
	public List<dich_vu> findAll() {
		return DichVuRepository.findAll();
	}
	
	public dich_vu save(dich_vu Dich_Vu) {
		return DichVuRepository.save(Dich_Vu);
	}
	
	public void deleteById(String ma_dich_vu) {
		DichVuRepository.deleteById(ma_dich_vu);
	}
	
}
