package com.quanlyphichungcu.doAn.entity;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.IdClass;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table(name="DICH_VU_CAN_HO")
@IdClass(dich_vu_can_ho_prikey.class)
public class dich_vu_can_ho {
	
	@Id
	@ManyToOne
	@JoinColumn(name = "ma_can_ho")
	private can_ho can_ho;
	
	@Id
	@ManyToOne
	@JoinColumn(name = "ma_dich_vu")
	private dich_vu dich_vu;
	
	private int so_luong;
	
	@Id
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern="dd/MM/yyyy")
	private Date ngay_bat_dau;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern="dd/MM/yyyy")
	private Date ngay_ket_thuc;
	
	public dich_vu_can_ho(com.quanlyphichungcu.doAn.entity.can_ho can_ho,
			com.quanlyphichungcu.doAn.entity.dich_vu dich_vu, int so_luong, Date ngay_bat_dau, Date ngay_ket_thuc) {
		super();
		this.can_ho = can_ho;
		this.dich_vu = dich_vu;
		this.so_luong = so_luong;
		this.ngay_bat_dau = ngay_bat_dau;
		this.ngay_ket_thuc = ngay_ket_thuc;
	}

	public dich_vu_can_ho() {
		super();
	}

	public can_ho getCan_ho() {
		return can_ho;
	}

	public void setCan_ho(can_ho can_ho) {
		this.can_ho = can_ho;
	}

	public dich_vu getDich_vu() {
		return dich_vu;
	}

	public void setDich_vu(dich_vu dich_vu) {
		this.dich_vu = dich_vu;
	}

	public int getSo_luong() {
		return so_luong;
	}

	public void setSo_luong(int so_luong) {
		this.so_luong = so_luong;
	}

	public Date getNgay_bat_dau() {
		return ngay_bat_dau;
	}

	public void setNgay_bat_dau(Date ngay_bat_dau) {
		this.ngay_bat_dau = ngay_bat_dau;
	}

	public Date getNgay_ket_thuc() {
		return ngay_ket_thuc;
	}

	public void setNgay_ket_thuc(Date ngay_ket_thuc) {
		this.ngay_ket_thuc = ngay_ket_thuc;
	}

	@Override
	public String toString() {
		return "dich_vu_can_ho [can_ho=" + can_ho + ", dich_vu=" + dich_vu + ", so_luong=" + so_luong
				+ ", ngay_bat_dau=" + ngay_bat_dau + ", ngay_ket_thuc=" + ngay_ket_thuc + "]";
	}

	public static List<dich_vu_can_ho> getDichVuByCanHo(String string) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
