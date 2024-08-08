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
	private String don_vi;
	
	
	@OneToMany(mappedBy = "dich_vu")
	private List<dich_vu_can_ho> ds_dich_vu_can_ho; 
	
	//0 tra sau 1 tra truoc
	private int tra_truoc;
	
	
	
	public int getTra_truoc() {
		return tra_truoc;
	}

	public void setTra_truoc(int tra_truoc) {
		this.tra_truoc = tra_truoc;
	}

	public String getMa_dich_vu() {
		return ma_dich_vu;
	}

	public String getTen_dich_vu() {
		return ten_dich_vu;
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
	public String getDon_vi() {
		return don_vi;
	}
	public void setDon_vi(String don_vi) {
		this.don_vi = don_vi;
	}

	

	public List<dich_vu_can_ho> getDs_dich_vu_can_ho() {
		return ds_dich_vu_can_ho;
	}

	public void setDs_dich_vu_can_ho(List<dich_vu_can_ho> ds_dich_vu_can_ho) {
		this.ds_dich_vu_can_ho = ds_dich_vu_can_ho;
	}

	@Override
	public String toString() {
		return "dich_vu [ma_dich_vu=" + ma_dich_vu + ", ten_dich_vu=" + ten_dich_vu + ", vat=" + vat + ", don_gia="
				+ don_gia + ", don_vi=" + don_vi + ", tra_truoc=" + tra_truoc + ", ds_dich_vu_can_ho="
				+ ds_dich_vu_can_ho + "]";
	}

	public dich_vu(String ma_dich_vu, String ten_dich_vu, int vat, int don_gia, String don_vi, int tra_truoc,
			List<dich_vu_can_ho> ds_dich_vu_can_ho) {
		super();
		this.ma_dich_vu = ma_dich_vu;
		this.ten_dich_vu = ten_dich_vu;
		this.vat = vat;
		this.don_gia = don_gia;
		this.don_vi = don_vi;
		this.tra_truoc = tra_truoc;
		this.ds_dich_vu_can_ho = ds_dich_vu_can_ho;
		this.tra_truoc = tra_truoc;
	}

	public dich_vu() {
		super();
	}

}