package com.quanlyphichungcu.doAn.entity;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name="CAN_HO")

public class can_ho {
	@Id
	private String ma_can_ho;
	private int dien_tich;
	private String khu;
	private String tang;
	
	@ManyToOne
	@JoinColumn(name = "ma_chu_so_huu")
	private ChuSoHuu chuSoHuu;
	
	@OneToMany(mappedBy = "can_ho")
	private List<dich_vu_can_ho> ds_dich_vu_can_ho;
	
	
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

	public ChuSoHuu getChuSoHuu() {
		return chuSoHuu;
	}
	public void setChuSoHuu(ChuSoHuu chuSoHuu) {
		this.chuSoHuu = chuSoHuu;
	}
	

	public List<dich_vu_can_ho> getDs_dich_vu_can_ho() {
		return ds_dich_vu_can_ho;
	}

	public void setDs_dich_vu_can_ho(List<dich_vu_can_ho> ds_dich_vu_can_ho) {
		this.ds_dich_vu_can_ho = ds_dich_vu_can_ho;
	}
	
	public can_ho(String ma_can_ho, int dien_tich, String khu, String tang, ChuSoHuu chuSoHuu,
			List<dich_vu_can_ho> ds_dich_vu_can_ho) {
		super();
		this.ma_can_ho = ma_can_ho;
		this.dien_tich = dien_tich;
		this.khu = khu;
		this.tang = tang;
		this.chuSoHuu = chuSoHuu;
		this.ds_dich_vu_can_ho = ds_dich_vu_can_ho;
	}
	public can_ho() {
		super();
	}

}