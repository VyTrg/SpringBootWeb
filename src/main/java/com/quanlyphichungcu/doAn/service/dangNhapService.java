package com.quanlyphichungcu.doAn.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quanlyphichungcu.doAn.entity.dang_nhap;
import com.quanlyphichungcu.doAn.repository.dangNhapRepository;

@Service
public class dangNhapService {
	@Autowired
	private dangNhapRepository Repository;
	
	public Optional<dang_nhap> findById(String id) {
        return Repository.findById(id);
    }
	
	public dang_nhap save(dang_nhap dn) {
		return Repository.save(dn);
	}
	
	public void create(dang_nhap dn) {
		Repository.save(dn);
	}
}