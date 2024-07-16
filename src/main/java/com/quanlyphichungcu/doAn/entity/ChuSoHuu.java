package com.quanlyphichungcu.doAn.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="CHU_SO_HUU")
public class ChuSoHuu {
	@Id
	private String ma_chu_so_huu;
	private String ho_ten;
	private String sdt;
	private String phai;
	private String ngay_sinh;
	private String cccd;
//	Chu so huu join voi bang dang nhap kieu tra ve la Entity dang nhap
//	@ManyToOne
//	@JoinColumn(name = "DangNhapCSH")
	private String ten_dang_nhap;
	@Override
	public String toString() {
		return "ChuSoHuu [ma_chu_so_huu=" + ma_chu_so_huu + ", ho_ten=" + ho_ten + ", sdt=" + sdt + ", phai=" + phai
				+ ", ngay_sinh=" + ngay_sinh + ", cccd=" + cccd + ", ten_dang_nhap=" + ten_dang_nhap + "]";
	}
	public ChuSoHuu() {
		super();
	}
	public ChuSoHuu(String ma_chu_so_huu, String ho_ten, String sdt, String phai, String ngay_sinh, String cccd,
			String ten_dang_nhap) {
		super();
		this.ma_chu_so_huu = ma_chu_so_huu;
		this.ho_ten = ho_ten;
		this.sdt = sdt;
		this.phai = phai;
		this.ngay_sinh = ngay_sinh;
		this.cccd = cccd;
		this.ten_dang_nhap = ten_dang_nhap;
	}
	public String getMa_chu_so_huu() {
		return ma_chu_so_huu;
	}
	public void setMa_chu_so_huu(String ma_chu_so_huu) {
		this.ma_chu_so_huu = ma_chu_so_huu;
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
	public String getPhai() {
		return phai;
	}
	public void setPhai(String phai) {
		this.phai = phai;
	}
	public String getNgay_sinh() {
		return ngay_sinh;
	}
	public void setNgay_sinh(String ngay_sinh) {
		this.ngay_sinh = ngay_sinh;
	}
	public String getCccd() {
		return cccd;
	}
	public void setCccd(String cccd) {
		this.cccd = cccd;
	}
	public String getTen_dang_nhap() {
		return ten_dang_nhap;
	}
	public void setTen_dang_nhap(String ten_dang_nhap) {
		this.ten_dang_nhap = ten_dang_nhap;
	}

}
