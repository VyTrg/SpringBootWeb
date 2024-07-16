package com.quanlyphichungcu.doAn.entity;

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
	private String thang;
	private String nam;
//	@ManyToOne
//	@JoinColumn(name = "ma_can_ho")
	private String ma_can_ho;
	
	@ManyToOne
	@JoinColumn(name = "ma_nhan_vien")
	private nhan_vien nhanVien;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private String ngay_tao;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private String ngay_dong_tien;
	private String tien_thang;
	private String tien_no;
	
	
	@Override
	public String toString() {
		return "HoaDon [ma_hoa_don=" + ma_hoa_don + ", thang=" + thang + ", nam=" + nam + ", ma_can_ho=" + ma_can_ho
				+ ", nhanVien=" + nhanVien + ", ngay_tao=" + ngay_tao + ", ngay_dong_tien=" + ngay_dong_tien
				+ ", tien_thang=" + tien_thang + ", tien_no=" + tien_no + "]";
	}
	
	
	public HoaDon(String ma_hoa_don, String thang, String nam, String ma_can_ho, nhan_vien nhanVien, String ngay_tao,
			String ngay_dong_tien, String tien_thang, String tien_no) {
		super();
		this.ma_hoa_don = ma_hoa_don;
		this.thang = thang;
		this.nam = nam;
		this.ma_can_ho = ma_can_ho;
		this.nhanVien = nhanVien;
		this.ngay_tao = ngay_tao;
		this.ngay_dong_tien = ngay_dong_tien;
		this.tien_thang = tien_thang;
		this.tien_no = tien_no;
	}


	public HoaDon() {
		super();
	}
	public String getMa_hoa_don() {
		return ma_hoa_don;
	}
	public void setMa_hoa_don(String ma_hoa_don) {
		this.ma_hoa_don = ma_hoa_don;
	}
	public String getThang() {
		return thang;
	}
	public void setThang(String thang) {
		this.thang = thang;
	}
	public String getNam() {
		return nam;
	}
	public void setNam(String nam) {
		this.nam = nam;
	}
	public String getMa_can_ho() {
		return ma_can_ho;
	}
	public void setMa_can_ho(String ma_can_ho) {
		this.ma_can_ho = ma_can_ho;
	}
	public nhan_vien getNhanVien() {
		return nhanVien;
	}

	public void setNhanVien(nhan_vien nhanVien) {
		this.nhanVien = nhanVien;
	}
	public String getNgay_tao() {
		return ngay_tao;
	}
	public void setNgay_tao(String ngay_tao) {
		this.ngay_tao = ngay_tao;
	}
	public String getNgay_dong_tien() {
		return ngay_dong_tien;
	}
	public void setNgay_dong_tien(String ngay_dong_tien) {
		this.ngay_dong_tien = ngay_dong_tien;
	}
	public String getTien_thang() {
		return tien_thang;
	}
	public void setTien_thang(String tien_thang) {
		this.tien_thang = tien_thang;
	}
	public String getTien_no() {
		return tien_no;
	}
	public void setTien_no(String tien_no) {
		this.tien_no = tien_no;
	}
	

	

}
