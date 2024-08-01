package com.quanlyphichungcu.doAn.entity;


import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table(name="CHU_SO_HUU")
public class ChuSoHuu {
	@Id private String ma_chu_so_huu;
	private String ho_ten;
	private String sdt;
	private String phai;
	
	@Temporal(TemporalType.DATE)

	@DateTimeFormat(pattern = "yyyy-MM-dd")

	private Date ngay_sinh;
	private String cccd;
//	Chu so huu join voi bang dang nhap kieu tra ve la Entity dang nhap
	
	@ManyToOne
	@JoinColumn(name = "ten_dang_nhap")
	private dang_nhap dangNhap;
	
	@OneToMany(mappedBy = "chuSoHuu")
	private List<can_ho> ds_can_ho;
	
	
	@Override
	public String toString() {
		return "ChuSoHuu [ma_chu_so_huu=" + ma_chu_so_huu + ", ho_ten=" + ho_ten + ", sdt=" + sdt + ", phai=" + phai
				+ ", ngay_sinh=" + ngay_sinh + ", cccd=" + cccd + ", dangNhap=" + dangNhap + "]";
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



	public Date getNgay_sinh() {
		return ngay_sinh;
	}



	public void setNgay_sinh(Date ngay_sinh) {
		this.ngay_sinh = ngay_sinh;
	}



	public String getCccd() {
		return cccd;
	}



	public void setCccd(String cccd) {
		this.cccd = cccd;
	}



	public dang_nhap getDangNhap() {
		return dangNhap;
	}



	public void setDangNhap(dang_nhap dangNhap) {
		this.dangNhap = dangNhap;
	}



	public List<can_ho> getDs_can_ho() {
		return ds_can_ho;
	}



	public void setDs_can_ho(List<can_ho> ds_can_ho) {
		this.ds_can_ho = ds_can_ho;
	}



	public ChuSoHuu(String ma_chu_so_huu, String ho_ten, String sdt, String phai, Date ngay_sinh, String cccd,
			dang_nhap dangNhap, List<can_ho> ds_can_ho) {
		super();
		this.ma_chu_so_huu = ma_chu_so_huu;
		this.ho_ten = ho_ten;
		this.sdt = sdt;
		this.phai = phai;
		this.ngay_sinh = ngay_sinh;
		this.cccd = cccd;
		this.dangNhap = dangNhap;
		this.ds_can_ho = ds_can_ho;
	}



	public ChuSoHuu() {
		super();
	}

}