package com.quanlyphichungcu.doAn.entity;

import java.io.Serializable;

public class dich_vu_can_ho_prikey implements Serializable {
	private can_ho can_ho;
	private dich_vu dich_vu;
	
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
			com.quanlyphichungcu.doAn.entity.dich_vu dich_vu) {
		super();
		this.can_ho = can_ho;
		this.dich_vu = dich_vu;
	}
	public dich_vu_can_ho_prikey() {
		super();
	}
}
