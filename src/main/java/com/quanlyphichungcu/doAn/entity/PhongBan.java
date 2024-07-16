package com.quanlyphichungcu.doAn.entity;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name="PHONG_BAN")
public class PhongBan {
	@Id
	private String ma_phong_ban;
	private String ten_phong_ban;
	
//	@OneToMany(mappedBy = "ma_nhan_vien", fetch = FetchType.EAGER)
	List<String> nhan_vien; 
	@Override
	public String toString() {
		return "PhongBan [ma_phong_ban=" + ma_phong_ban + ", ten_phong_ban=" + ten_phong_ban + "]";
	}
	public PhongBan() {
		super();
	}
	public PhongBan(String ma_phong_ban, String ten_phong_ban) {
		super();
		this.ma_phong_ban = ma_phong_ban;
		this.ten_phong_ban = ten_phong_ban;
	}
	public String getMa_phong_ban() {
		return ma_phong_ban;
	}
	public void setMa_phong_ban(String ma_phong_ban) {
		this.ma_phong_ban = ma_phong_ban;
	}
	public String getTen_phong_ban() {
		return ten_phong_ban;
	}
	public void setTen_phong_ban(String ten_phong_ban) {
		this.ten_phong_ban = ten_phong_ban;
	}

}
