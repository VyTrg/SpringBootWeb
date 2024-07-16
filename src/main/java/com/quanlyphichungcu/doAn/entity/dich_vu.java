package com.quanlyphichungcu.doAn.entity;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name="DICH_VU")

public class dich_vu {
	@Id
	private String ma_dich_vu;
	private String ten_dich_vu;
	private int vat;
	private int don_gia;
	private int don_vi;
	
	@OneToMany(mappedBy = "ma_dich_vu")
	private List<dich_vu_can_ho> ds_dich_vu_can_ho; 
	
	
	public dich_vu(String ma_dich_vu, String ten_dich_vu, int vat, int don_gia, int don_vi) {
		super();
		this.ma_dich_vu = ma_dich_vu;
		this.ten_dich_vu = ten_dich_vu;
		this.vat = vat;
		this.don_gia = don_gia;
		this.don_vi = don_vi;
	}
	
	public dich_vu() {
		super();
	}
	
	
	public void setMa_dich_vu(String ma_dich_vu) {
		this.ma_dich_vu = ma_dich_vu;
	}
	public void setTen_dich_vu(String ten_dich_vu) {
		this.ten_dich_vu = ten_dich_vu;
	}
	public void setVat(int vat) {
		this.vat = vat;
	}
	public void setDon_gia(int don_gia) {
		this.don_gia = don_gia;
	}
	public int getVat() {
		return vat;
	}
	public int getDon_gia() {
		return don_gia;
	}
	public int getDon_vi() {
		return don_vi;
	}
	public void setDon_vi(int don_vi) {
		this.don_vi = don_vi;
	}

}