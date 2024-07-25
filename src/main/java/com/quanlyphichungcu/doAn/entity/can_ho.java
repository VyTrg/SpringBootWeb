package com.quanlyphichungcu.doAn.entity;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name="CAN_HO")

public class can_ho {
	@Id
	private String ma_can_ho;
	private int dien_tich;
	private String ma_chu_so_huu;
	private String khu;
	private String tang;
	
	@OneToMany(mappedBy = "can_ho")
	private List<dich_vu_can_ho> ds_dich_vu_can_ho;
	
	public can_ho(String ma_can_ho, int dien_tich, String ma_chu_so_huu, String khu, String tang) {
		super();
		this.ma_can_ho = ma_can_ho;
		this.dien_tich = dien_tich;
		this.ma_chu_so_huu = ma_chu_so_huu;
		this.khu = khu;
		this.tang = tang;
	}
	
	public can_ho() {
		super();
	}
	
	
	public String getMa_can_ho() {
		return ma_can_ho;
	}
	public void setMa_can_ho(String ma_can_ho) {
		this.ma_can_ho = ma_can_ho;
	}
	public int getDien_tich() {
		return dien_tich;
	}
	public void setDien_tich(int dien_tich) {
		this.dien_tich = dien_tich;
	}
	public String getMa_chu_so_huu() {
		return ma_chu_so_huu;
	}
	public void setMa_chu_so_huu(String ma_chu_so_huu) {
		this.ma_chu_so_huu = ma_chu_so_huu;
	}
	public String getKhu() {
		return khu;
	}
	public void setKhu(String khu) {
		this.khu = khu;
	}
	public String getTang() {
		return tang;
	}
	public void setTang(String tang) {
		this.tang = tang;
	}

}