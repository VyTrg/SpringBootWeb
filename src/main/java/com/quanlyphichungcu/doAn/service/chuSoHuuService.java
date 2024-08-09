package com.quanlyphichungcu.doAn.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quanlyphichungcu.doAn.entity.ChuSoHuu;
import com.quanlyphichungcu.doAn.repository.chuSoHuuRepository;

@Service
public class chuSoHuuService {
	@Autowired
	private chuSoHuuRepository Repository;
	
	public Optional<ChuSoHuu> findById(String id) {
        return Repository.findById(id);
    }
	
	public ChuSoHuu save(ChuSoHuu csh) {
		return Repository.save(csh);
	}
	
	public void create(ChuSoHuu csh) {
		Repository.save(csh);
	}
}
