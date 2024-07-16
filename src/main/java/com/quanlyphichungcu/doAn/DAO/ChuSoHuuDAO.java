package com.quanlyphichungcu.doAn.DAO;

import java.util.Collection;

import com.quanlyphichungcu.doAn.entity.ChuSoHuu;

public interface ChuSoHuuDAO {
	public Collection<ChuSoHuu> FindAll();
	public ChuSoHuu FindById(String Id);
	public ChuSoHuu FindByChuSoHuu(String IdChuSoHuu);
	
	public ChuSoHuu Create(ChuSoHuu CSH);
	public void Update(ChuSoHuu CSH);
	public void Delete(ChuSoHuu CSH);
}
