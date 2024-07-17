package com.quanlyphichungcu.doAn.entity;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import jakarta.persistence.UniqueConstraint;

@Entity
@Table(name="HOA_DON",uniqueConstraints = {
		@UniqueConstraint(name = "UniqueHoaDonThang", columnNames = {"thang","nam","ma_can_ho"})
})
public class HoaDon {
	@Id
	private String ma_hoa_don;
	private Integer thang;
	private Integer nam;
	@ManyToOne
	@JoinColumn(name = "ma_can_ho")
	private can_ho maCanHo;
	
	@ManyToOne
	@JoinColumn(name = "ma_nhan_vien")
	private nhan_vien nhanVien;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date ngay_tao;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date ngay_dong_tien;
	private Integer tien_thang;
	private Integer tien_no;
	
	public String getMa_hoa_don() {
		return ma_hoa_don;
	}


	public void setMa_hoa_don(String ma_hoa_don) {
		this.ma_hoa_don = ma_hoa_don;
	}


	public Integer getThang() {
		return thang;
	}


	public void setThang(Integer thang) {
		this.thang = thang;
	}


	public Integer getNam() {
		return nam;
	}


	public void setNam(Integer nam) {
		this.nam = nam;
	}


	public can_ho getMaCanHo() {
		return maCanHo;
	}


	public void setMaCanHo(can_ho maCanHo) {
		this.maCanHo = maCanHo;
	}


	public nhan_vien getNhanVien() {
		return nhanVien;
	}


	public void setNhanVien(nhan_vien nhanVien) {
		this.nhanVien = nhanVien;
	}


	public Date getNgay_tao() {
		return ngay_tao;
	}


	public void setNgay_tao(Date ngay_tao) {
		this.ngay_tao = ngay_tao;
	}


	public Date getNgay_dong_tien() {
		return ngay_dong_tien;
	}


	public void setNgay_dong_tien(Date ngay_dong_tien) {
		this.ngay_dong_tien = ngay_dong_tien;
	}


	public Integer getTien_thang() {
		return tien_thang;
	}


	public void setTien_thang(Integer tien_thang) {
		this.tien_thang = tien_thang;
	}


	public Integer getTien_no() {
		return tien_no;
	}


	public void setTien_no(Integer tien_no) {
		this.tien_no = tien_no;
	}


	public HoaDon(String ma_hoa_don, Integer thang, Integer nam, can_ho maCanHo, nhan_vien nhanVien, Date ngay_tao,
			Date ngay_dong_tien, Integer tien_thang, Integer tien_no) {
		super();
		this.ma_hoa_don = ma_hoa_don;
		this.thang = thang;
		this.nam = nam;
		this.maCanHo = maCanHo;
		this.nhanVien = nhanVien;
		this.ngay_tao = ngay_tao;
		this.ngay_dong_tien = ngay_dong_tien;
		this.tien_thang = tien_thang;
		this.tien_no = tien_no;
	}


	public HoaDon() {
		super();
	}


	@Override
	public String toString() {
		return "HoaDon [ma_hoa_don=" + ma_hoa_don + ", thang=" + thang + ", nam=" + nam + ", maCanHo=" + maCanHo
				+ ", nhanVien=" + nhanVien + ", ngay_tao=" + ngay_tao + ", ngay_dong_tien=" + ngay_dong_tien
				+ ", tien_thang=" + tien_thang + ", tien_no=" + tien_no + "]";
	}
	
	
}
