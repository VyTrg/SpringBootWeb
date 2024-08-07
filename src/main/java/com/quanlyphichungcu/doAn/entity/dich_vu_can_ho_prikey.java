package com.quanlyphichungcu.doAn.entity;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

public class dich_vu_can_ho_prikey implements Serializable {
	private can_ho can_ho;
	private dich_vu dich_vu;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern="dd/MM/yyyy")
	private Date ngay_bat_dau;
	
	public Date getNgay_bat_dau() {
		return ngay_bat_dau;
	}
	public void setNgay_bat_dau(Date ngay_bat_dau) {
		this.ngay_bat_dau = ngay_bat_dau;
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
	
	
	public dich_vu_can_ho_prikey(com.quanlyphichungcu.doAn.entity.can_ho can_ho,
			com.quanlyphichungcu.doAn.entity.dich_vu dich_vu, Date ngay_bat_dau) {
		super();
		this.can_ho = can_ho;
		this.dich_vu = dich_vu;
		this.ngay_bat_dau = ngay_bat_dau;
	}
	public dich_vu_can_ho_prikey() {
		super();
	}
}
