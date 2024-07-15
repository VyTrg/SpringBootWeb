package com.quanlyphichungcu.doAn.entity;



import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;


@Entity
@Table(name="DANG_NHAP")

public class dang_nhap {
	@Id private String ten_dang_nhap;
	private String mat_khau;
	//private String ma_quyen;
	
	@ManyToOne
	@JoinColumn(name="ma_quyen")
	private quyen Quyen;
	
	//getter setter
	public quyen getQuyen() {
		return Quyen;
	}
	public void setQuyen(quyen quyen) {
		Quyen = quyen;
	}
	public String getTen_dang_nhap() {
		return ten_dang_nhap;
	}
	public void setTen_dang_nhap(String ten_dang_nhap) {
		this.ten_dang_nhap = ten_dang_nhap;
	}
	public String getMat_khau() {
		return mat_khau;
	}
	public void setMat_khau(String ma_khau) {
		this.mat_khau = ma_khau;
	}
	
	public dang_nhap(String ten_dang_nhap, quyen quyen) {
		super();
		this.ten_dang_nhap = ten_dang_nhap;
		Quyen = quyen;
	}
	public dang_nhap() {
		
	}
}
