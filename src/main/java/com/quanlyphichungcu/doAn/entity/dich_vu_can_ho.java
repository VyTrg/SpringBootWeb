package com.quanlyphichungcu.doAn.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.Setter;
import lombok.Getter;

@Setter
@Getter

@Entity
@Table(name="DICH_VU_CAN_HO")

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
	
}
