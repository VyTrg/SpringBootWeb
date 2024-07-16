package com.quanlyphichungcu.doAn.entity;


import jakarta.persistence.Entity;

import jakarta.persistence.Id;

import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;


@Entity
@Table(name="QUYEN")
public class quyen {
	@Id private String ma_quyen;
	private String ten_quyen;
	
	//getter setter
	public String getMa_quyen() {
		return ma_quyen;
	}
	public void setMa_quyen(String ma_quyen) {
		this.ma_quyen = ma_quyen;
	}
	public String getTen_quyen() {
		return ten_quyen;
	}
	public void setTen_quyen(String ten_quyen) {
		this.ten_quyen = ten_quyen;
	}

	public quyen(String ma_quyen, String ten_quyen) {
		this.ma_quyen = ma_quyen;
		this.ten_quyen = ten_quyen;
	}
	
	@Override
	public String toString() {
		return "quyen [ma_quyen=" + ma_quyen + ", ten_quyen=" + ten_quyen + "]";
	}
	public quyen() {
			
	}
}
