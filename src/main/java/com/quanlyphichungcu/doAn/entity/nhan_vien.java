package com.quanlyphichungcu.doAn.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="NHAN_VIEN")
public class nhan_vien {
	@Id private String ma_nhan_vien;
	
	private String ho_ten;
	
	@Column(unique=true)
	private String sdt;
	
	@Column(unique=true)
	private String cccd;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date ngay_sinh;
	
	@OneToOne
	@JoinColumn(name="ten_dang_nhap")
	private dang_nhap dangNhap;
	
	private String ma_phong_ban;

	public String getMa_nhan_vien() {
		return ma_nhan_vien;
	}

	public void setMa_nhan_vien(String ma_nhan_vien) {
		this.ma_nhan_vien = ma_nhan_vien;
	}

	public String getHo_ten() {
		return ho_ten;
	}

	public void setHo_ten(String ho_ten) {
		this.ho_ten = ho_ten;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public String getCccd() {
		return cccd;
	}

	public void setCccd(String cccd) {
		this.cccd = cccd;
	}

	public Date getNgay_sinh() {
		return ngay_sinh;
	}

	public void setNgay_sinh(Date ngay_sinh) {
		this.ngay_sinh = ngay_sinh;
	}

	public dang_nhap getDangNhap() {
		return dangNhap;
	}

	public void setDangNhap(dang_nhap dangNhap) {
		this.dangNhap = dangNhap;
	}

	public String getMa_phong_ban() {
		return ma_phong_ban;
	}

	public void setMa_phong_ban(String ma_phong_ban) {
		this.ma_phong_ban = ma_phong_ban;
	}

	public nhan_vien(String ma_nhan_vien, String ho_ten, String sdt, String cccd, Date ngay_sinh, dang_nhap dangNhap,
			String ma_phong_ban) {
		super();
		this.ma_nhan_vien = ma_nhan_vien;
		this.ho_ten = ho_ten;
		this.sdt = sdt;
		this.cccd = cccd;
		this.ngay_sinh = ngay_sinh;
		this.dangNhap = dangNhap;
		this.ma_phong_ban = ma_phong_ban;
	}
	
}
